class Zhistory < Formula
  desc "Command-line analysis tool for zsh history"
  homepage "https://github.com/itsKarad/ZHistory"
  url "https://github.com/itsKarad/ZHistory/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "894b7a9d29e934a3ddf23192b14c5fb54bdbc3777930106c287203f9c668bc23"
  license "MIT"
  version "0.1.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # system "#{bin}/zhistory", "--version"
    assert_match "zhistory v1.0.0", shell_output("#{bin}/zhistory --version")
  end
end
