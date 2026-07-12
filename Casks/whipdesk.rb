cask "whipdesk" do
  arch arm: "arm64", intel: "x64"

  version "0.2.3"
  sha256 arm:   "591ca9a7c53d9ac52e26e0794b3b5ea751e87d883e5a79d7a52f0ea5eba83bbf",
         intel: "ccb134d67797820e87e6cc1144401f9ac4647e113af35a767307a145cfc5d625"

  url "https://github.com/BinaryBananaLLC/WhipDesk/releases/download/v#{version}/whipdesk-#{version}-macos-#{arch}.pkg"
  name "WhipDesk"
  desc "Remote desktop and AI-agent status alerts, controlled from a mobile browser"
  homepage "https://whipdesk.com/"

  depends_on macos: :monterey

  pkg "whipdesk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.binarybanana.whipdesk"

  zap trash: "~/.whipdesk"
end
