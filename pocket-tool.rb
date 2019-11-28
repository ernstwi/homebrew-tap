class PocketTool < Formula
  desc "Article manager for Pocket"
  homepage "https://github.com/ernstwi/pocket-tool"
  url "https://github.com/ernstwi/pocket-tool/archive/1.2.1.tar.gz"
  sha256 "bc8b3918df64a03078c27ee8252f00879a2835780d22a1918aa2d805a66c23e1"
  head "https://github.com/ernstwi/pocket-tool.git"

  def install
    system "make"
    bin.install "pocket-tool"
  end
end
