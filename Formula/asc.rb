class Asc < Formula
    desc "AWS Simple CLI (asc)"
    homepage "https://github.com/harleymckenzie/asc"
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.0.1"
    sha256 "7a669c45415d650e0fc73fb4b993ae14e95a60c3952bcd4fee5c81d9d0fba63a"
  
    depends_on "python@3.11"
  
    def install
      system "python3", *Language::Python.setup_install_args(prefix)
    end
  
    test do
      system "#{bin}/asc", "--help"  # Replace with a command that tests basic functionality
    end
  end
  