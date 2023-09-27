# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Inflate < Formula
  desc "inflate"
  homepage "https://github.com/bwagner5/inflate"
  version "0.0.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bwagner5/inflate/releases/download/v0.0.6/inflate_0.0.6_darwin_arm64.tar.gz"
      sha256 "dd274021b33ccfe34f60445b2090c98942a9f89fc5f7ce9c17770b26c8d9f0cf"

      def install
        bin.install "inflate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bwagner5/inflate/releases/download/v0.0.6/inflate_0.0.6_darwin_amd64.tar.gz"
      sha256 "a70f63de1357bc8bfd8b919301e27a75517d24001a512df95267fa82f69dbc51"

      def install
        bin.install "inflate"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bwagner5/inflate/releases/download/v0.0.6/inflate_0.0.6_linux_arm64.tar.gz"
      sha256 "1351ca511ffc27d9b3b8aff68cd159143db7c256824433a1b4fd40e20b8f40c4"

      def install
        bin.install "inflate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bwagner5/inflate/releases/download/v0.0.6/inflate_0.0.6_linux_amd64.tar.gz"
      sha256 "d95850826f4e89c82577cd7e56a831d62b9cd73a43fa43cb2d45e1f8c4c63a4f"

      def install
        bin.install "inflate"
      end
    end
  end

  test do
    system "#{bin}/inflate --help"
  end
end
