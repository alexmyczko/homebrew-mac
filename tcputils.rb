class Tcputils < Formula
  desc "Utilities for TCP programming in shell-scripts"
  homepage "https://packages.debian.org/sid/source/tcputils"
  url "http://deb.debian.org/debian/pool/main/t/tcputils/tcputils_0.6.2.orig.tar.gz"
  sha256 "ea63a2aee9f6505b6296a51f4d1f907beb0ecb4bd1e2dd63962b3aed8400f83f"
  license "public-domain"

  # depends_on "cmake" => :build

  def install
    ENV.deparallelize
    system "make", "NETLIBS="
    bin.install "getpeername"
    bin.install "mini-inetd"
    bin.install "tcpbug"
    bin.install "tcpconnect"
    bin.install "tcplisten"
    man1.install "getpeername.1"
    man1.install "mini-inetd.1"
    man1.install "tcpbug.1"
    man1.install "tcpconnect.1"
    man1.install "tcplisten.1"
  end

  test do
    system "false"
  end
end
