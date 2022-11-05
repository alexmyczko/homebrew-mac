class Ruptime < Formula
  desc "poor man’s ruptime"
  homepage "https://wedonthaveaprivacyproblem.com"
  url "https://github.com/alexmyczko/ruptime/archive/refs/tags/1.3.1.tar.gz"
  sha256 "c7eb25831edf1893f3b513c5c38ef5ff5a06078a05b09961c0629d5e77648ce0"
  license "AGPL-3.0"

  depends_on "xz"
  depends_on "mcrypt"
  depends_on "memtester"
  depends_on "datamash"

  def install
    bin.install "ruptime"
    bin.install "ruptimed"
    man1.install "man/ruptime.1"
    man8.install "man/ruptimed.8"
  end

  test do
    system "false"
  end
end
