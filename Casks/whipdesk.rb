cask "whipdesk" do
  arch arm: "arm64", intel: "x64"

  version "0.2.4"
  sha256 arm:   "4bd8c5b43d341cde5c7b88989f5211cd6a7e9d2d24f4161cffafade46bfb183e",
         intel: "f57ab05f34fb8395dc53ce49717f1c457c4039437b6a63af2ce3903329a281a6"

  url "https://github.com/BinaryBananaLLC/WhipDesk/releases/download/v#{version}/whipdesk-#{version}-macos-#{arch}.pkg"
  name "WhipDesk"
  desc "Remote desktop and AI-agent status alerts, controlled from a mobile browser"
  homepage "https://whipdesk.com/"

  depends_on macos: :monterey

  pkg "whipdesk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.binarybanana.whipdesk"

  zap trash: "~/.whipdesk"
end
