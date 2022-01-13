class Iselect < Formula
  desc "Interactive line selection tool"
  homepage "http://www.ossp.org/pkg/tool/iselect/"
  url "ftp://ftp.ossp.org/pkg/tool/iselect/iselect-1.4.0.tar.gz"
  sha256 "5b75fc5fa5407e85fa77d2a299c4e7628c0213116809f343946e62a8a25c5b1b"
  license "GPL-2-only"

  # depends_on "cmake" => :build

  def install
    system "./configure", *std_configure_args, "--disable-silent-rules"
    system "make", "install"
  end

  test do
    system "true"
  end
end
