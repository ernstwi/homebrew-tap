class PocketTool < Formula
  desc "Command-line tool for bulk managing your Pocket list"
  homepage "https://github.com/ernstwi/pocket-tool"
  url "https://github.com/ernstwi/pocket-tool/archive/1.0.0.tar.gz"
  sha256 "a1787f8741cc4ccf452b8ae73f38818ebc5c80ec33fe78108b3e18069e6c669b"

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
