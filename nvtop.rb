class Nvtop < Formula
  desc "Interactive GPU process monitor"
  homepage "https://github.com/Syllo/nvtop"
  url "https://sid.ethz.ch/debian/nvtop/macos/nvtop_3.0.2%2Bgit20240213%2Bds.orig.tar.xz"
  sha256 "fb46aa755eeeadab6e6f511915ab0166f813fb0c1d2dd929bf3a3249b6ae10d0"
  license "GPL-3.0-or-later"

  depends_on "cmake" => :build
  depends_on "pkgconf" => :build

  def install
    system "cmake", "."
    system "make"
    bin.install "src/nvtop"
    man1.install "manpage/nvtop" => "nvtop.1"
  end

  test do
    system "#{bin}/nvtop", "-v"
  end
end
