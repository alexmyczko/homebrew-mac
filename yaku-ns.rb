class YakuNs < Formula
  desc "Small footprint, trivial to configure, DNS server"
  homepage "https://github.com/antirez/yaku-ns"
  url "https://deb.debian.org/debian/pool/main/y/yaku-ns/yaku-ns_0.2.orig.tar.gz"
  sha256 "9ad94c49d399d7b3b19e9042dd7a9413082d90c1f8efedb68f60332ef59c3fe6"
  license "GPL-3.0-or-later"

  depends_on "gcc" => :build

  fails_with :clang

  def install
    ENV["CC"] = "gcc-13"
    system "make"
    bin.install "yaku-ns"
    bin.install "yaku-getzone"
    man1.install "Documentation/yaku-ns.1"
    man1.install "Documentation/yaku-getzone.1"
  end

  test do
    system "#{bin}/yaku-ns", "-v"
  end
end
