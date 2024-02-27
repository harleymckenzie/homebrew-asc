class Asc < Formula
    desc "AWS Simple CLI (asc)"
    homepage "https://github.com/harleymckenzie/asc"
    url ""
    sha256 ""
  
    depends_on "python@3.11"
  
    def install
      system "python3", *Language::Python.setup_install_args(prefix)
    end
  
    test do
      system "#{bin}/asc", "--help"  # Replace with a command that tests basic functionality
    end
  end
  