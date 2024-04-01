class Drafts < Formula
  desc "Drafts CLI"
  homepage "https://github.com/ernstwi/drafts"
  version "0.1.2"
  license "MIT"

  depends_on "fzf"
  depends_on :macos

  url "https://github.com/ernstwi/drafts/releases/download/v#{version}/drafts.tar.gz"
  sha256 "bd6aeb1599268632cbba275786b28f6863fb3c0d56da23acdb60b9ce42f372df"

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
