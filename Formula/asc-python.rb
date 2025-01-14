class Asc < Formula
  include Language::Python::Virtualenv

  desc "AWS Simple CLI (asc)"
  homepage "https://github.com/harleymckenzie/asc-python"
  
  # BEGIN RELEASE URL AND HASH
  url "https://api.github.com/repos/harleymckenzie/asc-python/tarball/v0.0.5"
  sha256 "4a694a233aab22cd16984edfbd8c5192078b8ea5386dd0a78fd817a7ecaf5a1b"
  # END RELEASE URL AND HASH
  
  depends_on "python-argcomplete"
  depends_on "python@3.11"

  resource "argcomplete" do
    url "https://files.pythonhosted.org/packages/79/51/fd6e293a64ab6f8ce1243cf3273ded7c51cbc33ef552dce3582b6a15d587/argcomplete-3.3.0.tar.gz"
    sha256 "fd03ff4a5b9e6580569d34b273f741e85cd9e072f3feeeee3eba4891c70eda62"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/f8/e9/d16f4c5614fdb2a5d12af17dc0c0517fba999fa50daa5e2e55ab1b6375e6/boto3-1.34.54.tar.gz"
    sha256 "8b3f5cc7fbedcbb22271c328039df8a6ab343001e746e0cdb24774c426cadcf8"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/f7/f3/797c4c19071699ce87f7e76229d56c2a79af4f4431aa84f8988bdb52a047/botocore-1.34.54.tar.gz"
    sha256 "4061ff4be3efcf53547ebadf2c94d419dfc8be7beec24e9fa1819599ffd936fa"
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
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
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
