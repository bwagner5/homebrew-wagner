class Ds < Formula
  desc "ds is a simple cli tool to get basic stats from datasets"
  homepage "https://github.com/bwagner5/ds"
  version 'v0.1.1'
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bwagner5/ds/releases/download/v0.1.1/ds-darwin-amd64.tar.gz"
    sha256 'bc73c12b5349d565c803c65ae6ed8ecbf4e7e406b8c5ade4a178b526f122ae3b'
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/bwagner5/ds/releases/download/v0.1.1/ds-linux-amd64.tar.gz"
      sha256 '04f9a50f63e2c1929be47eabf993048d68a76c959a4d87ba89f6ae9531e2b641'
    elsif Hardware::CPU.arm?
      url "https://github.com/bwagner5/ds/releases/download/v0.1.1/ds-linux-arm64.tar.gz"
      sha256 '7f27fd95de2f8bd1c165e1ff22c7d84aeecd4e4b4d85332af3d36f683ba9694e'
    end
  end

  def install
    bin.install 'ds'
  end

  test do
    assert_match "Usage", shell_output("#{bin}/ds --help")
  end
end
