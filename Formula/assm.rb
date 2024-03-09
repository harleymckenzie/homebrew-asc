class Assm < Formula
  include Language::Python::Virtualenv

  desc "A helper script to connect to AWS instances using SSM Session Manager"
  homepage "https://github.com/harleymckenzie/assm"

  # BEGIN RELEASE URL AND HASH
  url "https://api.github.com/repos/harleymckenzie/assm/tarball/v0.0.4"
  sha256 "8b2c35afa10b206e4167cd4b868b2a630cfb792c480d248761fe5b4af6d5a5b5"
  # END RELEASE URL AND HASH
  
  depends_on "python@3.9"
  
  resource "boto3" do
    url "https://files.pythonhosted.org/packages/c0/ff/2266dc472337449827b5ccb522aeb110e5324918d097f20bdd0604bc239f/boto3-1.34.59.tar.gz"
    sha256 "162edf182e53c198137a28432a626dba103f787a8f5000ed4758b73ccd203fa0"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/7d/80/8d4a0d641955c63e6889ba4563703a8cd8f5cc409d75dfb0b0afd6773651/botocore-1.34.59.tar.gz"
    sha256 "24edb4d21d7c97dea0c6c4a80d36b3809b1443a30b0bd5e317d6c319dfac823f"
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

  resource "simple-term-menu" do
    url "https://files.pythonhosted.org/packages/a1/a0/7e78b93510886f6fb5b7146bd5cee03986fa5c2319644155c275e389c55a/simple-term-menu-1.6.4.tar.gz"
    sha256 "be9c5dbd8df12a404b14cd8e95d6fc02d58c60e2555f65ddde41777c487fb3b9"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/0c/39/64487bf07df2ed854cc06078c27c0d0abc59bd27b32232876e403c333a08/urllib3-1.26.18.tar.gz"
    sha256 "f8ecc1bba5667413457c529ab955bf8c67b45db799d159066261719e328580a0"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/assm", "--help"
  end
end

