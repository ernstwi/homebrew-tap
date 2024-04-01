cask "drafts-helper" do
  name "Drafts CLI Helper"
  desc "Helper tool for Drafts CLI"
  homepage "https://github.com/ernstwi/drafts"
  version "0.1.2"

  url "https://github.com/ernstwi/drafts/releases/download/v#{version}/drafts-cli-helper.tar.gz"
  sha256 "a09da896639eae355fe082a0801290a7eb0e0e944c4b313b6d9c9c3de77be205"

  app "Drafts CLI Helper.app"
end
