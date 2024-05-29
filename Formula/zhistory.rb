class Zhistory < Formula
  desc "Command-line analysis tool for zsh history"
  homepage "https://github.com/itsKarad/ZHistory"
  url "https://github.com/itsKarad/ZHistory/blob/hitarth/releases/zhistory.tar.gz"
  sha256 "acba3a66b4400dfe968bb355c5b07749fdd48a4e352a8f2e4d0f017cc65f2055"
  license "MIT"
  version "0.1.0"

  depends_on "rust" => :build

  def install
    bin.install "zhistory"
  end

  test do
    # system "#{bin}/zhistory", "--version"
    assert_match "zhistory v1.0.0", shell_output("#{bin}/zhistory --version")
  end
end
