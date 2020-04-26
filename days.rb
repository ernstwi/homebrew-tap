require "language/node"

class Days < Formula
  desc "Journaling tool"
  homepage "https://github.com/ernstwi/days"
  url "https://registry.npmjs.org/@ernstwi/days/-/days-1.0.0.tgz"
  sha256 "450354cf1addbe9d330c60ed3363f4717371eb22b6d7a11ad1ef0d5bf2d0274f"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
