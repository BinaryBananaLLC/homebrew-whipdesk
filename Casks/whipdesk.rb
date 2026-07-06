cask "whipdesk" do
  arch arm: "arm64", intel: "x64"

  version "0.1.4"
  sha256 arm:   "d0af4bbb5f278e4b041aac842792bc1da0e3220a9c19caff82e673a9ec0134d1",
         intel: "89d943a35134f454f8cf10f502d750883f9ce1a6ee7f08e2bd1c7164961c66e9"

  url "https://github.com/BinaryBananaLLC/WhipDesk/releases/download/v#{version}/whipdesk-#{version}-macos-#{arch}.pkg"
  name "WhipDesk"
  desc "Remote desktop and AI-agent status alerts, controlled from a mobile browser"
  homepage "https://whipdesk.com/"

  depends_on macos: ">= :monterey"

  pkg "whipdesk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.binarybanana.whipdesk"

  zap trash: "~/.whipdesk"
end
