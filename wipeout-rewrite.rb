class WipeoutRewrite < Formula
  desc "futuristic anti gravity racing"
  homepage "https://github.com/phoboslab/wipeout-rewrite"
  url "http://bananas.debian.net/debian/wipeout/wipeout-rewrite_0.tar.xz"
  sha256 "535ed89bad1e525407ffa73fbd252644d5b9a848eddd0b0af98a4c838c69998c"
  license "PUBLIC-DOMAIN"
  # get the data from https://phoboslab.org/files/wipeout-data-v01.zip
  # get gcdb from https://github.com/mdqinc/SDL_GameControllerDB/blob/master/gamecontrollerdb.txt

  depends_on "cmake" => :build
  depends_on "sdl2" => :build

  def install
    system "make"
    bin.install "wipegame"
    #man1.install "manpage/wipegame" => "wipegame.6"
  end

  test do
    system "#{bin}/wipegame", "-v"
  end
end
