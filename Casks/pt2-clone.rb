cask "pt2-clone" do
  version "1.39"
  sha256 "4292d3bd65155405d512ed9c112b8fe29326c84c6dcc2d49e31235ba12a662ab"

  url "https://16-bits.org/pt2-clone-v#{version}-macos.zip"
  name "pt2-clone"
  desc "Music tracker clone of ProTracker 2 for modern computers"
  homepage "https://16-bits.org/pt.php"

  app "pt2-clone-macos"
end
