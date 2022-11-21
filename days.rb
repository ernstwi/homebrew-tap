require "language/node"

class Days < Formula
  desc "Journaling tool"
  homepage "https://github.com/ernstwi/days"
  url "https://registry.npmjs.org/@ernstwi/days/-/days-2.0.0.tgz"
  sha256 "d9d09052f296f12bf505d4ee2cc2605beeb4e5927d38d8005432174168be045e"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
