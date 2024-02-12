cask "drafts-helper" do
  name "Drafts CLI Helper"
  desc "Helper tool for Drafts CLI"
  homepage "https://github.com/ernstwi/drafts"
  version "0.1.0"

  url "https://github.com/ernstwi/drafts/releases/download/v#{version}/drafts-cli-helper.tar.gz"
  sha256 "5ef6f1d40533ecae69b70f1b2ed8083b3185c4bfe18c9baec96e618b82553d2f"

  app "Drafts CLI Helper.app"
end
