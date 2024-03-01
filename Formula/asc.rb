class Asc < Formula
  include Language::Python::Virtualenv

  desc "AWS Simple CLI (asc)"
  homepage "https://github.com/harleymckenzie/asc"
  url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.1.0"
  sha256 "9c3c2a4ad674243e2b81b502eaab7c372f02e8c39df949d7c4804733ce7884f1"
  
  depends_on "python@3.11"

  resource "boto3" do
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.1.0"
    sha256 "9c3c2a4ad674243e2b81b502eaab7c372f02e8c39df949d7c4804733ce7884f1"
  end

  resource "botocore" do
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.1.0"
    sha256 "9c3c2a4ad674243e2b81b502eaab7c372f02e8c39df949d7c4804733ce7884f1"
  end

  resource "configparser" do
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.1.0"
    sha256 "9c3c2a4ad674243e2b81b502eaab7c372f02e8c39df949d7c4804733ce7884f1"
  end

  resource "jmespath" do
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.1.0"
    sha256 "9c3c2a4ad674243e2b81b502eaab7c372f02e8c39df949d7c4804733ce7884f1"
  end

  resource "python-dateutil" do
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.1.0"
    sha256 "9c3c2a4ad674243e2b81b502eaab7c372f02e8c39df949d7c4804733ce7884f1"
  end

  resource "s3transfer" do
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.1.0"
    sha256 "9c3c2a4ad674243e2b81b502eaab7c372f02e8c39df949d7c4804733ce7884f1"
  end

  resource "six" do
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.1.0"
    sha256 "9c3c2a4ad674243e2b81b502eaab7c372f02e8c39df949d7c4804733ce7884f1"
  end

  resource "tabulate" do
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.1.0"
    sha256 "9c3c2a4ad674243e2b81b502eaab7c372f02e8c39df949d7c4804733ce7884f1"
  end

  resource "urllib3" do
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.1.0"
    sha256 "9c3c2a4ad674243e2b81b502eaab7c372f02e8c39df949d7c4804733ce7884f1"
  end

  def install
    virtualenv_install_with_resources
  end

   test do
     system "#{bin}/asc", "--help"  # Replace with a command that tests basic functionality
   end
end
