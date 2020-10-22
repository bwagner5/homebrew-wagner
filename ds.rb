class Ds < Formula
  desc "ds is a simple cli tool to get basic stats from datasets"
  homepage "https://github.com/bwagner5/ds"
  version 'v0.1.2'
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bwagner5/ds/releases/download/v0.1.2/ds-darwin-amd64.tar.gz"
    sha256 'cce7c2531fcc84562c1ca389296b2dae10e2a70c152f5e2baab7124622540f23'
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/bwagner5/ds/releases/download/v0.1.2/ds-linux-amd64.tar.gz"
      sha256 'bd0399744e1bb7c525c8ff098c88f77e69ba9594e71e627982792b5b6cfcb742'
    elsif Hardware::CPU.arm?
      url "https://github.com/bwagner5/ds/releases/download/v0.1.2/ds-linux-arm64.tar.gz"
      sha256 'bea2694c1d967c391a60e1baa315856cca8c515f53db964439c89d328005d0d1'
    end
  end

  def install
    bin.install 'ds'
  end

  test do
    assert_match "Usage", shell_output("#{bin}/ds --help")
  end
end
