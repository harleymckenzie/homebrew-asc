class Asc < Formula
  include Language::Python::Virtualenv

  desc "AWS Simple CLI (asc)"
  homepage "https://github.com/harleymckenzie/asc"
  url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.0.1"
  sha256 "14c2db6bff9be6c1ebce6f1f481f5278c33a3fe83e1153184f14329f2e5bf9ec"
  
  depends_on "python@3.11"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/e2/8e/75c1e586b46f0f324175253a35265769d60f66934b8a397a027aa7d1a989/boto3-1.34.51.tar.gz"
    sha256 "2cd9463e738a184cbce8a6824027c22163c5f73e277a35ff5aa0fb0e845b4301"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/74/75/fe7eb7a170d9a1a8a2ae93e5bfaa17cbbb308e90da7bfaa28145252fd307/botocore-1.34.51.tar.gz"
    sha256 "5086217442e67dd9de36ec7e87a0c663f76b7790d5fb6a12de565af95e87e319"
  end

  resource "configparser" do
    url "https://files.pythonhosted.org/packages/82/97/930be4777f6b08fc7c248d70c2ea8dfb6a75ab4409f89abc47d6cab37d39/configparser-6.0.1.tar.gz"
    sha256 "db45513e971e509496b150be31bd67b0e14ab20b78a383b677e4b158e2c682d8"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
    sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
    sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/a0/b5/4c570b08cb85fdcc65037b5229e00412583bb38d974efecb7ec3495f40ba/s3transfer-0.10.0.tar.gz"
    sha256 "d0c8bbf672d5eebbe4e57945e23b972d963f07d82f661cabf678a5c88831595b"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/ec/fe/802052aecb21e3797b8f7902564ab6ea0d60ff8ca23952079064155d1ae1/tabulate-0.9.0.tar.gz"
    sha256 "0095b12bf5966de529c0feb1fa08671671b3368eec77d7ef7ab114be2c068b3c"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/af/47/b215df9f71b4fdba1025fc05a77db2ad243fa0926755a52c5e71659f4e3c/urllib3-2.0.7.tar.gz"
    sha256 "c97dfde1f7bd43a71c8d2a58e369e9b2bf692d1334ea9f9cae55add7d0dd0f84"
  end

  def install
    virtualenv_install_with_resources
  end

   test do
     system "#{bin}/asc", "--help"  # Replace with a command that tests basic functionality
   end
end
