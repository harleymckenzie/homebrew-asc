class Asc < Formula
  include Language::Python::Virtualenv

  desc "AWS Simple CLI (asc)"
  homepage "https://github.com/harleymckenzie/asc"
  url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.0.1"
  sha256 "14c2db6bff9be6c1ebce6f1f481f5278c33a3fe83e1153184f14329f2e5bf9ec"
  
  depends_on "python@3.11"

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/ec/fe/802052aecb21e3797b8f7902564ab6ea0d60ff8ca23952079064155d1ae1/tabulate-0.9.0.tar.gz"
    sha256 "0095b12bf5966de529c0feb1fa08671671b3368eec77d7ef7ab114be2c068b3c"
  end

  def install
    virtualenv_install_with_resources
  end

   test do
     system "#{bin}/asc", "--help"  # Replace with a command that tests basic functionality
   end
end
