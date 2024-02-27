class Asc < Formula
    desc "AWS Simple CLI (asc)"
    homepage "https://github.com/harleymckenzie/asc"
    url "https://api.github.com/repos/harleymckenzie/asc/tarball/v0.0.1"
    sha256 "38e394765d3db44f5101a8315d3b8e68716d1ad8130a90baa3b79f702d2a7d9d"
  
    depends_on "python@3.11"
  
    def install
      system "python3", *Language::Python.setup_install_args(prefix)
    end
  
    test do
      system "#{bin}/asc", "--help"  # Replace with a command that tests basic functionality
    end
  end
  