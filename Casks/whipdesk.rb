cask "whipdesk" do
  arch arm: "arm64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "4e0a5bfdcae1c98ce8bfbd48d3474089b154f62b881a2563017689367bb362be",
         intel: "5d7c2791221b2bdc388d087722947a824707fbab12ab91d50b5ff699df4ad171"

  url "https://github.com/BinaryBananaLLC/WhipDesk/releases/download/v#{version}/whipdesk-#{version}-macos-#{arch}.pkg"
  name "WhipDesk"
  desc "Remote desktop and AI-agent status alerts, controlled from a mobile browser"
  homepage "https://whipdesk.com/"

  depends_on macos: :monterey

  pkg "whipdesk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.binarybanana.whipdesk"

  zap trash: "~/.whipdesk"
end
