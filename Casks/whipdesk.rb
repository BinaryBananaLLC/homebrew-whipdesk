cask "whipdesk" do
  arch arm: "arm64", intel: "x64"

  version "0.1.3"
  sha256 arm:   "26344a660cd06a691303fa03cb2cd40f21f2314f81e1eb27b340ddead8794c0b",
         intel: "8906d3135f3645f245b0f8bbc46bfa6c69e09effe777627e707c3254c00f0edc"

  url "https://github.com/BinaryBananaLLC/WhipDesk/releases/download/v#{version}/whipdesk-#{version}-macos-#{arch}.pkg"
  name "WhipDesk"
  desc "Remote desktop and AI-agent status alerts, controlled from a mobile browser"
  homepage "https://whipdesk.com/"

  depends_on macos: ">= :monterey"

  pkg "whipdesk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.binarybanana.whipdesk"

  zap trash: "~/.whipdesk"
end
