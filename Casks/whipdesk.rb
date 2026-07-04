cask "whipdesk" do
  arch arm: "arm64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "9e3434221461f2a7081d71d9fab4d7aa8e46c008aaee9c744f0f1b023c5476e0",
         intel: "0e59c4f356a322f65cb2a5c8b27ea348a07a183aed2da83c18c0ea78c1fbaf44"

  url "https://github.com/BinaryBananaLLC/WhipDesk/releases/download/v#{version}/whipdesk-#{version}-macos-#{arch}.pkg"
  name "WhipDesk"
  desc "Remote desktop and AI-agent status alerts, controlled from a mobile browser"
  homepage "https://whipdesk.com/"

  depends_on macos: ">= :monterey"

  pkg "whipdesk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.binarybanana.whipdesk"

  zap trash: "~/.whipdesk"
end
