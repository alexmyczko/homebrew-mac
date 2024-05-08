class Dwarfs < Formula
  desc "efficient high-compression read-only filesystem"
  homepage "https://github.com/mhx/dwarfs"
  url "http://bananas.debian.net/macos/dwarfs/dwarfs_0.9.9%2bgit20240508%2bds.orig.tar.xz"
  sha256 "89b2549e3a4c8479b62c944e46fa915c6a693033d8a988146f91a9044a54b625"
  license "GPL-3.0"

  depends_on "cmake" => :build
  depends_on "pkgconf" => :build
  depends_on "xxhash" => :build
  depends_on "range-v3" => :build
  depends_on "libarchive" => :build
  depends_on "brotli" => :build
  depends_on "libdwarf" => :build
  depends_on "libelf" => :build
  depends_on "libunwind-headers" => :build
  depends_on "jemalloc" => :build
  depends_on "ronn" => :build
  depends_on "xz" => :build
  depends_on "double-conversion" => :build

  def install
    system "cmake", "."
    system "make"
    #bin.install "src/nvtop"
    #man1.install "manpage/nvtop" => "nvtop.1"
  end

  test do
    system "#{bin}/dwarfs", "-v"
  end
end
