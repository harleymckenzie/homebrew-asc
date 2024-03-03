import hashlib
import requests
import os

# Constants for your repository
GITHUB_REPO = "harleymckenzie/asc"
FORMULA_PATH = "Formula/asc.rb"


def get_latest_release_info():
    url = f"https://api.github.com/repos/{GITHUB_REPO}/releases/latest"
    response = requests.get(url)
    response.raise_for_status()  # Raises an HTTPError if the status is 4xx, 5xx
    data = response.json()
    return data["tag_name"], data["tarball_url"]


def calculate_sha256(url):
    response = requests.get(url)
    response.raise_for_status()
    sha256 = hashlib.sha256(response.content).hexdigest()
    return sha256


def update_formula(version, url, sha256):
    with open(FORMULA_PATH, "r") as file:
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

    with open(FORMULA_PATH, "w") as file:
        content = "".join(content)
        file.write(content)


def main():
    version, url = get_latest_release_info()
    sha256 = calculate_sha256(url)
    update_formula(version, url, sha256)
    print(f'Updated formula to version {version} with sha256 {sha256}')
    
    # Write version to GitHub Actions environment file
    with open(os.getenv('GITHUB_ENV'), 'a') as env_file:
        env_file.write(f"VERSION={version}\n")


if __name__ == "__main__":
    main()
