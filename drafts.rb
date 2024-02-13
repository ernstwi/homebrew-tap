class Drafts < Formula
  desc "Drafts CLI"
  homepage "https://github.com/ernstwi/drafts"
  version "0.1.1"
  license "MIT"

  depends_on "fzf"
  depends_on :macos

  url "https://github.com/ernstwi/drafts/releases/download/v#{version}/drafts.tar.gz"
  sha256 "4f6b2e3c3d0eed8a9a25200ed8221355e8a5c99f889162682f04c5769e2873d9"

  def install
    bin.install "drafts"
  end

  def caveats
    <<~EOS
      To use this, you must also install the cask "drafts-helper":
        brew install --cask --no-quarantine ernstwi/tap/drafts-helper
    EOS
  end
end
