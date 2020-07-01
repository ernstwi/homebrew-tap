require "language/node"

class Days < Formula
  desc "Journaling tool"
  homepage "https://github.com/ernstwi/days"
  url "https://registry.npmjs.org/@ernstwi/days/-/days-1.6.1.tgz"
  sha256 "d3b8fc943731363de0c5285d286902eba472a2b9cdf66eef22a5035f259e45ee"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
