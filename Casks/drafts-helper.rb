cask "drafts-helper" do
  name "Drafts CLI Helper"
  desc "Helper tool for Drafts CLI"
  homepage "https://github.com/ernstwi/drafts"
  version "0.1.1"

  url "https://github.com/ernstwi/drafts/releases/download/v#{version}/drafts-cli-helper.tar.gz"
  sha256 "6735df32bc869d90d53260b0fb51dae6f1554417a53350d14ee2b6d189bb4076"

  app "Drafts CLI Helper.app"
end
