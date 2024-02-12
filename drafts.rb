class Drafts < Formula
  desc "Drafts CLI"
  homepage "https://github.com/ernstwi/drafts"
  version "0.1.0"
  license "MIT"

  depends_on "fzf"
  depends_on :macos

  url "https://github.com/ernstwi/drafts/releases/download/v#{version}/drafts.tar.gz"
  sha256 "cce7e12e6aede8ab2a3f46ab5ff5f6d6e1d08a29876024416a9f46c3b16c7ee4"

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
