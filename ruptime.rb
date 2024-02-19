class Ruptime < Formula
  desc "poor man’s ruptime"
  homepage "https://wedonthaveaprivacyproblem.com"
  url "https://github.com/alexmyczko/ruptime/archive/refs/tags/1.6.tar.gz"
  sha256 "9a82779bc0b3eefb07ec25019f3377c8e42a62627226347b471831b7b8c52f7c"
  license "AGPL-3.0"

  depends_on "xz"
  depends_on "memtester"

  def install
    bin.install "ruptime"
    #bin.install "ruptimed"
    bin.install_symlink "ruptime" => "rsw"
    bin.install_symlink "ruptime" => "rhw"
    bin.install_symlink "ruptime" => "runame"
    bin.install_symlink "ruptime" => "rbench"
    bin.install_symlink "ruptime" => "rboot"
    bin.install_symlink "ruptime" => "rdisk"
    bin.install_symlink "ruptime" => "rload"
    bin.install_symlink "ruptime" => "rnet"
    bin.install_symlink "ruptime" => "rac"
    bin.install_symlink "ruptime" => "rwho"
    man1.install "man/ruptime.1"
    #man8.install "man/ruptimed.8"
  end

  test do
    system "false"
  end
end
