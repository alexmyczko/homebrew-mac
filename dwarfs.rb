class Dwarfs < Formula
  desc "efficient high-compression read-only filesystem"
  homepage "https://github.com/mhx/dwarfs"
  url "http://bananas.debian.net/macos/dwarfs/dwarfs_0.9.9%2bgit20240508%2bds.orig.tar.xz"
  sha256 "6aecda2fea611738b8ffbb759ccf690b418eae156e41e71e6f9a14f8815fb0bf"
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
  depends_on "ninja" => :build
  depends_on "python3" => :build
  depends_on "howard-hinnant-date" => :build
  depends_on "glog" => :build
  depends_on "libevent" => :build
  depends_on "flac" => :build
  depends_on "openssl" => :build
  depends_on "utf8cpp" => :build
  depends_on "boost" => :build
  depends_on "zstd" => :build

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
