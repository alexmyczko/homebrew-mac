class Ruptime < Formula
  desc "poor man’s ruptime"
  homepage "https://wedonthaveaprivacyproblem.com"
  url "https://github.com/alexmyczko/ruptime/archive/refs/tags/1.6.tar.gz"
  sha256 "c7eb25831edf1893f3b513c5c38ef5ff5a06078a05b09961c0629d5e77648ce0"
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
