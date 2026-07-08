cask "whipdesk" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "2757776b3ba1633ba9db87590c34e1c6615a9c00db0318c9b82384e6115b1052",
         intel: "b1a36045646cf918d958cd1d1705ecafc35d38110a4af7bbb54f478469cd1a2d"

  url "https://github.com/BinaryBananaLLC/WhipDesk/releases/download/v#{version}/whipdesk-#{version}-macos-#{arch}.pkg"
  name "WhipDesk"
  desc "Remote desktop and AI-agent status alerts, controlled from a mobile browser"
  homepage "https://whipdesk.com/"

  depends_on macos: ">= :monterey"

  pkg "whipdesk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.binarybanana.whipdesk"

  zap trash: "~/.whipdesk"
end
