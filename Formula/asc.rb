# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Asc < Formula
  desc "AWS Simple CLI (ASC) - A simplified interface for AWS operations."
  homepage "https://github.com/harleymckenzie/asc"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/harleymckenzie/asc/releases/download/v0.0.5/asc_Darwin_x86_64.tar.gz"
      sha256 "388cfe6a85384260fc94dd735f1e07678667e272268a2e3e3066b4946b5b02b2"

      def install
        bin.install "asc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/harleymckenzie/asc/releases/download/v0.0.5/asc_Darwin_arm64.tar.gz"
      sha256 "8ec6c656571576578479bed3347ddeb6c93e32a68d237114b5eeebb5878827ce"

      def install
        bin.install "asc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/harleymckenzie/asc/releases/download/v0.0.5/asc_Linux_x86_64.tar.gz"
        sha256 "5a9056cddc5a5ae28a0bdff256e28cef3d733e2ec0e82bb545ad821deb5ad257"

        def install
          bin.install "asc"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/harleymckenzie/asc/releases/download/v0.0.5/asc_Linux_arm64.tar.gz"
        sha256 "8c4586b50b61d723a07f4e90212dfaa1edee8235a6e56f5c44e8be1b6490223e"

        def install
          bin.install "asc"
        end
      end
    end
  end

  test do
    system "#{bin}/asc help"
  end
end
