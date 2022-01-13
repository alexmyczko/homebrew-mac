class Form < Formula
  desc "The FORM project for symbolic manipulation of very big expressions"
  homepage "https://www.nikhef.nl/~form/"
  url "https://github.com/vermaseren/form/releases/download/v4.2.1/form-4.2.1.tar.gz"
  sha256 "f2722d6d4ccb034e01cf786d55342e1c21ff55b182a4825adf05d50702ab1a28"

  depends_on "gmp"
  depends_on "lzlib"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--with-zlib",
                          "--with-gmp",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/form", "-v"
  end
end
