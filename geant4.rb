class Geant4 < Formula
  desc "toolkit for the simulation of the passage of particles through matter"
  homepage "https://github.com/Geant4/geant4"
  url "https://github.com/Geant4/geant4/archive/refs/tags/v11.3.0.tar.gz"
  sha256 "a98340e3015d2e69ae956aa29d33dfc43c8cb3e0561ee2530b76dc1c79cd8698"
  license "GPL-3.0"

  depends_on "cmake" => :build
  depends_on "pkgconf" => :build
  depends_on "zlib" => :build
  depends_on "vtk" => :build
  depends_on "libtiff" => :build
  # qt5 or 6?

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
    # -DQt5_DIR=$(brew --prefix qt5)/lib/cmake/Qt5
    # or brew --prefix qt6 / brew --prefix qt
    #bin.install "yes"
    man1.install "man1/yes.1" => "yes.1"
  end

  test do
    system "#{bin}/whatever", "-v"
  end
end
