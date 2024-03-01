class Asc < Formula
  include Language::Python::Virtualenv

  desc "AWS Simple CLI (asc)"
  homepage "https://github.com/harleymckenzie/asc"
  url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.4.3"
  sha256 "b4fe11d045acdf5e59a82219c05273309e6549085624845464aa33e54ada22fa"
  
  depends_on "python@3.11"

  resource "boto3" do
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.4.3"
    sha256 "b4fe11d045acdf5e59a82219c05273309e6549085624845464aa33e54ada22fa"
  end

  resource "botocore" do
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.4.3"
    sha256 "b4fe11d045acdf5e59a82219c05273309e6549085624845464aa33e54ada22fa"
  end

  resource "configparser" do
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.4.3"
    sha256 "b4fe11d045acdf5e59a82219c05273309e6549085624845464aa33e54ada22fa"
  end

  resource "jmespath" do
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.4.3"
    sha256 "b4fe11d045acdf5e59a82219c05273309e6549085624845464aa33e54ada22fa"
  end

  resource "python-dateutil" do
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.4.3"
    sha256 "b4fe11d045acdf5e59a82219c05273309e6549085624845464aa33e54ada22fa"
  end

  resource "s3transfer" do
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.4.3"
    sha256 "b4fe11d045acdf5e59a82219c05273309e6549085624845464aa33e54ada22fa"
  end

  resource "six" do
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.4.3"
    sha256 "b4fe11d045acdf5e59a82219c05273309e6549085624845464aa33e54ada22fa"
  end

  resource "tabulate" do
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.4.3"
    sha256 "b4fe11d045acdf5e59a82219c05273309e6549085624845464aa33e54ada22fa"
  end

  resource "urllib3" do
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.4.3"
    sha256 "b4fe11d045acdf5e59a82219c05273309e6549085624845464aa33e54ada22fa"
  end

  def install
    virtualenv_install_with_resources
  end

   test do
     system "#{bin}/asc", "--help"  # Replace with a command that tests basic functionality
   end
end
