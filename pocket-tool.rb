class PocketTool < Formula
  desc "Article manager for Pocket"
  homepage "https://github.com/ernstwi/pocket-tool"
  url "https://github.com/ernstwi/pocket-tool/archive/1.1.0.tar.gz"
  sha256 "2a47517b7253652eeca7c1209cd3928bc2f5c902d74af01c9eb2851e0f92dec5"
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
