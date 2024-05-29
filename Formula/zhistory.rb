class Zhistory < Formula
  desc "Command-line analysis tool for zsh history"
  homepage "https://github.com/itsKarad/ZHistory"
  url "https://github.com/itsKarad/ZHistory/blob/hitarth/releases/zhistory.tar.gz"
  sha256 "b2e9792d38d101ea8c2ed28e8fc6f73b355c5d3fd8c814c245a13bbef9b4dbf4"
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
