require "language/node"

class Days < Formula
  desc "Journaling tool"
  homepage "https://github.com/ernstwi/days"
  url "https://registry.npmjs.org/@ernstwi/days/-/days-1.4.0.tgz"
  sha256 "8cd39291c9c0791d97e06ad9ceb056f26e6e1f848177a8308a791edf9d50ee30"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
