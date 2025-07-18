# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Asc < Formula
  desc "AWS Simple CLI (ASC) - A simplified interface for AWS operations."
  homepage "https://github.com/harleymckenzie/asc"
  version "0.0.31"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/harleymckenzie/asc/releases/download/v0.0.31/asc_Darwin_x86_64.tar.gz"
    sha256 "1403270fc8f4974c6d4ba39119b96913c60bafddc9c51d994f0067568224a1f7"

    def install
      bin.install "asc"
      generate_completions_from_executable(bin/"asc", "completion", shells: [:bash, :zsh, :fish])
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/harleymckenzie/asc/releases/download/v0.0.31/asc_Darwin_arm64.tar.gz"
    sha256 "efff2bb7204e81a6255c7bd96d333f81813f83f83eebfd2fd27b7d7d5b20fcd0"

    def install
      bin.install "asc"
      generate_completions_from_executable(bin/"asc", "completion", shells: [:bash, :zsh, :fish])
    end
  end

  test do
    system "#{bin}/asc help"
  end
end
