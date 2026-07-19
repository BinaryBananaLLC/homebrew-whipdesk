cask "whipdesk" do
  arch arm: "arm64", intel: "x64"

  version "1.0.4"
  sha256 arm:   "4937a1605a6ca5e22f6824a652a3b25e7d9ced4864d968cb20affe4c50685bde",
         intel: "3ccd228198d22d5ae9adbfc1767146b582f1668aacd505d73f98c1da293ac8b8"

  url "https://github.com/BinaryBananaLLC/WhipDesk/releases/download/v#{version}/whipdesk-#{version}-macos-#{arch}.pkg"
  name "WhipDesk"
  desc "Remote desktop and AI-agent status alerts, controlled from a mobile browser"
  homepage "https://whipdesk.com/"

  depends_on macos: :monterey

  pkg "whipdesk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.binarybanana.whipdesk"

  zap trash: "~/.whipdesk"
end
