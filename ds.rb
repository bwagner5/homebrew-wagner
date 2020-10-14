class Ds < Formula
  desc "ds is a simple cli tool to get basic stats from datasets"
  homepage "https://github.com/bwagner5/ds"
  version 'v0.1.0'
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bwagner5/ds/releases/download/v0.1.0/ds-darwin-amd64.tar.gz"
    sha256 '4abeed6b869330362d5c1d9803cf6ae90446779c8f4e769ca78341279ad9d209'
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/bwagner5/ds/releases/download/v0.1.0/ds-linux-amd64.tar.gz"
      sha256 'dd72b188139e137cc438aa2f5f4f4da1ade5b447c448b4db502b10fa559cb66a'
    elsif Hardware::CPU.arm?
      url "https://github.com/bwagner5/ds/releases/download/v0.1.0/ds-linux-arm64.tar.gz"
      sha256 '24a092d1f2c16df660bc14166b424130a9a40cf68f94817fc9322c77f45cf70a'
    end
  end

  def install
    bin.install 'ds'
  end

  test do
    assert_match "Usage", shell_output("#{bin}/ds --help")
  end
end
