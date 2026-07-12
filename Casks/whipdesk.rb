cask "whipdesk" do
  arch arm: "arm64", intel: "x64"

  version "0.2.2"
  sha256 arm:   "8f25e0010cfafdb30566f7874109d1504e3f77870b84f23ca8621649b2f4221b",
         intel: "130072247a324a911379b2fce3912aad7bcc591e54bc33a3c0e060c1415d1db4"

  url "https://github.com/BinaryBananaLLC/WhipDesk/releases/download/v#{version}/whipdesk-#{version}-macos-#{arch}.pkg"
  name "WhipDesk"
  desc "Remote desktop and AI-agent status alerts, controlled from a mobile browser"
  homepage "https://whipdesk.com/"

  depends_on macos: :monterey

  pkg "whipdesk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.binarybanana.whipdesk"

  zap trash: "~/.whipdesk"
end
