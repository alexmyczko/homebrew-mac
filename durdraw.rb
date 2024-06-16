class Durdraw < Formula
  desc "Versatile ASCII and ANSI Art text editor for drawing in terminal"
  homepage "https://durdraw.org"
  url "https://github.com/cmang/durdraw/archive/refs/tags/0.27.1.tar.gz"
  sha256 "809431fc3dded211a59b624397f6cd490aa0568a965808eed8dd76dbb92b5611"
 
  depends_on "python3"

  def install
    system "./configure", "--this-and-that",
                          "--render-a-duck",
    system "make", "install"
  end

  test do
    system "#{bin}/durdraw", "-h"
  end
end
