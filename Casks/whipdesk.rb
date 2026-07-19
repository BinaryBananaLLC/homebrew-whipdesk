cask "whipdesk" do
  arch arm: "arm64", intel: "x64"

  version "1.0.3"
  sha256 arm:   "e0ec08d930a7a90bc7631d3fb0595cbdce7112435537bb6d17bfa9cfea9fc6f1",
         intel: "6d55eda02d1c76c57ef873801f35e57659ccbe00b5c13258e16dc9f4d2d905c0"

  url "https://github.com/BinaryBananaLLC/WhipDesk/releases/download/v#{version}/whipdesk-#{version}-macos-#{arch}.pkg"
  name "WhipDesk"
  desc "Remote desktop and AI-agent status alerts, controlled from a mobile browser"
  homepage "https://whipdesk.com/"

  depends_on macos: :monterey

  pkg "whipdesk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.binarybanana.whipdesk"

  zap trash: "~/.whipdesk"
end
