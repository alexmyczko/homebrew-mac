class Geant4 < Formula
  desc "toolkit for the simulation of the passage of particles through matter"
  homepage "https://github.com/Geant4/geant4"
  url "https://github.com/Geant4/geant4/archive/refs/tags/v11.2.1.tar.gz"
  sha256 "d81e9abc98a1989f989a816c9f66924ab654e2cdc66b655f68a4ab42fafe54fb"
  license "GPL-3.0"

  depends_on "cmake" => :build
  depends_on "pkgconf" => :build
  depends_on "zlib" => :build
  depends_on "vtk" => :build
  depends_on "libtiff" => :build
  # qt5 or 6?

  def install
    system "mkdir", "build"
    system "cd", "build"
    system "cmake", "."
    system "make"
    # -DQt5_DIR=$(brew --prefix qt5)/lib/cmake/Qt5
    # or brew --prefix qt6 / brew --prefix qt
    #bin.install "yes"
    man1.install "man1/yes.1" => "yes.1"
  end

  test do
    system "#{bin}/whatever", "-v"
  end
end
