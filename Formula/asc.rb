class Asc < Formula
    desc "AWS Simple CLI (asc)"
    homepage "https://github.com/harleymckenzie/asc"
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.0.1"
    sha256 "65f5c310cdf73148843397b32e66957da8763544f065162df4651792b902cb66"
  
    depends_on "python@3.11"
  
    def install
      system "python3", *Language::Python.setup_install_args(prefix)
    end
  
    test do
      system "#{bin}/asc", "--help"  # Replace with a command that tests basic functionality
    end
  end
  