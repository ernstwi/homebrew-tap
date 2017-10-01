class PocketTool < Formula
  desc "Article manager for Pocket"
  homepage "https://github.com/ernstwi/pocket-tool"
  url "https://github.com/ernstwi/pocket-tool/archive/1.1.0.tar.gz"
  sha256 "2a47517b7253652eeca7c1209cd3928bc2f5c902d74af01c9eb2851e0f92dec5"
  head "https://github.com/ernstwi/pocket-tool.git"

  resource "jsmn" do
      url "https://github.com/zserge/jsmn/archive/35086597a72d94d8393e6a90b96e553d714085bd.tar.gz"
      sha256 "9cf211b926e5fa288cb40037823d70f9c3e61cb696cf35fc15e29e8f48307376"
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
