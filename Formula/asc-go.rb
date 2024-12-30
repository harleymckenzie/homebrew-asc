class AscGo < Formula
  desc "AWS Simple CLI (asc)"
  homepage "https://github.com/harleymckenzie/asc-go"
  url "https://github.com/harleymckenzie/asc-go/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "4987a22b4d004ba418c9fd1ae1c091dc3ec052dc8bf05dcc31473cabd336c908"
  license "MIT"

  def install
    system "go", "build", "-o", bin/"asc"
  end

  test do
    system "asc", "help"
  end
end
