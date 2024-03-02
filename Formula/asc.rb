class Asc < Formula
  include Language::Python::Virtualenv

  desc "AWS Simple CLI (asc)"
  homepage "https://github.com/harleymckenzie/asc"
  url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.0.3"
  sha256 "548f7cd9fb6e9651d2cf770f358c1b839ed19fd000e2c089e4bc59118d0355a9"
  
  depends_on "python@3.11"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/e2/8e/75c1e586b46f0f324175253a35265769d60f66934b8a397a027aa7d1a989/boto3-1.34.51.tar.gz"
  sha256 "548f7cd9fb6e9651d2cf770f358c1b839ed19fd000e2c089e4bc59118d0355a9"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/74/75/fe7eb7a170d9a1a8a2ae93e5bfaa17cbbb308e90da7bfaa28145252fd307/botocore-1.34.51.tar.gz"
  sha256 "548f7cd9fb6e9651d2cf770f358c1b839ed19fd000e2c089e4bc59118d0355a9"
  end

  resource "configparser" do
    url "https://files.pythonhosted.org/packages/82/97/930be4777f6b08fc7c248d70c2ea8dfb6a75ab4409f89abc47d6cab37d39/configparser-6.0.1.tar.gz"
  sha256 "548f7cd9fb6e9651d2cf770f358c1b839ed19fd000e2c089e4bc59118d0355a9"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
  sha256 "548f7cd9fb6e9651d2cf770f358c1b839ed19fd000e2c089e4bc59118d0355a9"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
  sha256 "548f7cd9fb6e9651d2cf770f358c1b839ed19fd000e2c089e4bc59118d0355a9"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/a0/b5/4c570b08cb85fdcc65037b5229e00412583bb38d974efecb7ec3495f40ba/s3transfer-0.10.0.tar.gz"
  sha256 "548f7cd9fb6e9651d2cf770f358c1b839ed19fd000e2c089e4bc59118d0355a9"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
  sha256 "548f7cd9fb6e9651d2cf770f358c1b839ed19fd000e2c089e4bc59118d0355a9"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/ec/fe/802052aecb21e3797b8f7902564ab6ea0d60ff8ca23952079064155d1ae1/tabulate-0.9.0.tar.gz"
  sha256 "548f7cd9fb6e9651d2cf770f358c1b839ed19fd000e2c089e4bc59118d0355a9"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/af/47/b215df9f71b4fdba1025fc05a77db2ad243fa0926755a52c5e71659f4e3c/urllib3-2.0.7.tar.gz"
  sha256 "548f7cd9fb6e9651d2cf770f358c1b839ed19fd000e2c089e4bc59118d0355a9"
  end
  
  def install
    virtualenv_install_with_resources
  end

   test do
     system "#{bin}/asc", "--help"  # Replace with a command that tests basic functionality
   end
end
