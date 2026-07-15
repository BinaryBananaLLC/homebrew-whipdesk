cask "whipdesk" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "67ceb2889cd18d5f1c5369f4b9da79b54fc5da5c669038bbf5d2920b5da23228",
         intel: "2a3752529f49313e58a002d976ca36e766bc753531df6ccbee37f7cb136f3a81"

  url "https://github.com/BinaryBananaLLC/WhipDesk/releases/download/v#{version}/whipdesk-#{version}-macos-#{arch}.pkg"
  name "WhipDesk"
  desc "Remote desktop and AI-agent status alerts, controlled from a mobile browser"
  homepage "https://whipdesk.com/"

  depends_on macos: :monterey

  pkg "whipdesk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.binarybanana.whipdesk"

  zap trash: "~/.whipdesk"
end
