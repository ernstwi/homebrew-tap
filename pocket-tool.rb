class PocketTool < Formula
  desc "Article manager for Pocket"
  homepage "https://github.com/ernstwi/pocket-tool"
  url "https://github.com/ernstwi/pocket-tool/archive/1.2.0.tar.gz"
  sha256 "28e0c745c55a008c7aaf5eddc8f33928d1c9fd7520c3f4a88f2854cc1a6db14e"
  head "https://github.com/ernstwi/pocket-tool.git"

  resource "jsmn" do
      url "https://github.com/zserge/jsmn/archive/732d283ee9a2e5c34c52af0e044850576888ab09.tar.gz"
      sha256 "7c25a7da1d36d3fe3071abb4efc9f2563d44a9f215520deed171874f5b353605"
  end

  def install
    resource("jsmn").stage {
        system "make CFLAGS=-DJSMN_PARENT_LINKS"
        buildpath.install "libjsmn.a"
        buildpath.install "jsmn.h"
    }

    system "make"
    bin.install "pocket-tool"
  end
end
