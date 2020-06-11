require "language/node"

class Days < Formula
  desc "Journaling tool"
  homepage "https://github.com/ernstwi/days"
  url "https://registry.npmjs.org/@ernstwi/days/-/days-1.5.1.tgz"
  sha256 "65a86288248672181b3549a6ae211c158b4072513e8febbaf24dc51cb2235334"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
