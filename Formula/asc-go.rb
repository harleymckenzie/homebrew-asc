class AscGo < Formula
  desc "AWS Simple CLI (asc)"
  homepage "https://github.com/harleymckenzie/asc-go"
  url "https://github.com/harleymckenzie/asc-go/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "f26290ed0f9cf74174a09308a3d8e6211f1cf6cd7403f9037c155265d683099f"
  license "MIT"

  depends_on "go" => :build

  head do
    url "https://github.com/harleymckenzie/asc-go.git", branch: "main"
  end

  def install
    ENV["GOPATH"] = buildpath
    system "go", "build", "-v", "-o", bin/"asc"
  end

  test do
    system "asc", "help"
  end
end
