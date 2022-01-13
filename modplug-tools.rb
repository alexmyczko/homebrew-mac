class ModplugTools < Formula
  desc "Music player based on libopenmpt/modplug for the command-line"
  homepage "https://github.com/alexmyczko/modplug-tools/"
  url "https://github.com/alexmyczko/modplug-tools/archive/refs/tags/0.5.6.tar.gz"
  sha256 "954b5cef17583e4e72f828c81fd07ccdfee51963171e8f34bc7c878a4323a8e4"
  license "GPL-3.0-or-later"

  depends_on "cmake" => :build
  depends_on "libmodplug"

  def install
    system "cmake", "."
    system "make"
    bin.install "mp123/modplug123"
    man1.install "modplug123.1"
  end

  test do
    system "true"
  end
end
