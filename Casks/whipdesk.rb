cask "whipdesk" do
  arch arm: "arm64", intel: "x64"

  version "1.0.5"
  sha256 arm:   "d37c987bf21966e4c6acd942fec63594597a3c83e4166443f1a6600db7edd339",
         intel: "2db2e1be647b0730da870b2928c478486033b36eaf8eec1b9672e8d044e4c78f"

  url "https://github.com/BinaryBananaLLC/WhipDesk/releases/download/v#{version}/whipdesk-#{version}-macos-#{arch}.pkg"
  name "WhipDesk"
  desc "Remote desktop and AI-agent status alerts, controlled from a mobile browser"
  homepage "https://whipdesk.com/"

  depends_on macos: :monterey

  pkg "whipdesk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.binarybanana.whipdesk"

  zap trash: "~/.whipdesk"
end
