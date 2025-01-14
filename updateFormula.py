#!/usr/bin/env python
"""Update a Homebrew formula with the latest release info from GitHub"""

import hashlib
import os
import sys  # Import sys to read command-line arguments
import requests

# Constants for your repository
REPOSITORIES = {
    "asc-python": {"repo": "harleymckenzie/asc-python", "formula_path": "Formula/asc-python.rb"},
    "assm": {"repo": "harleymckenzie/assm", "formula_path": "Formula/assm.rb"},
}


def get_latest_release_info(repo):
    """
    Fetch the latest release information for a given GitHub repository.

    :param repo: The repository in the format 'username/repository'.
    :return: A tuple containing the tag name and tarball URL of the latest
    release.
    """
    url = f"https://api.github.com/repos/{repo}/releases/latest"
    response = requests.get(url, timeout=20)
    response.raise_for_status()  # Raises an HTTPError if the status is 4xx/5xx
    data = response.json()
    return data["tag_name"], data["tarball_url"]


def calculate_sha256(url):
    """
    Calculate the SHA256 hash of the content at a given URL.

    :param url: The URL of the content to hash.
    :return: The SHA256 hash as a hexadecimal string.
    """
    response = requests.get(url, timeout=20)
    response.raise_for_status()
    sha256 = hashlib.sha256(response.content).hexdigest()
    return sha256


def update_formula(formula_path, version, url, sha256):
    """
    Update the Homebrew formula file with the new version, URL, and SHA256
    hash.

    :param formula_path: Path to the formula file to update.
    :param version: The new version string.
    :param url: The URL of the new version's tarball.
    :param sha256: The SHA256 hash of the new version's tarball.
    """
    with open(formula_path, "r") as file:
        content = file.readlines()

    start_index, end_index = None, None
    for i, line in enumerate(content):
        if "BEGIN RELEASE URL AND HASH" in line:
            start_index = i + 1  # URL line index
        elif "END RELEASE URL AND HASH" in line:
            end_index = i - 1  # sha256 line index
            break

    if start_index and end_index:
        content[start_index] = f'  url "{url}"\n'
        content[end_index] = f'  sha256 "{sha256}"\n'

    with open(formula_path, "w") as file:
        content = "".join(content)
        file.write(content)


def main():
    """
    Main function to update a Homebrew formula with the latest release info.

    Expects a command-line argument specifying which formula to update.
    """
    if len(sys.argv) < 2 or sys.argv[1] not in REPOSITORIES:
        print("Usage: python update-formula.py [asc-python|assm]")
        sys.exit(1)

    project = sys.argv[1]
    repo_info = REPOSITORIES[project]
    version, url = get_latest_release_info(repo_info["repo"])
    sha256 = calculate_sha256(url)
    update_formula(repo_info["formula_path"], version, url, sha256)
    print(f"Updated {project} formula to version {version} "
          f"with sha256 {sha256}")

    # Write version to GitHub Actions environment file
    with open(os.getenv("GITHUB_ENV"), "a") as env_file:
        env_file.write(f"VERSION={version}\n")


if __name__ == "__main__":
    main()
