cask "whipdesk" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "4126075ab88f9b44365be03490c66727bd62e7e586dccfd462fab2ff20e5ffbb",
         intel: "3fcca9fcd61315872fbb59d6fc8a5b5fac77732232def8366b3671462440cf9c"

  url "https://github.com/BinaryBananaLLC/WhipDesk/releases/download/v#{version}/whipdesk-#{version}-macos-#{arch}.pkg"
  name "WhipDesk"
  desc "Remote desktop and AI-agent status alerts, controlled from a mobile browser"
  homepage "https://whipdesk.com/"

  depends_on macos: :monterey

  pkg "whipdesk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.binarybanana.whipdesk"

  zap trash: "~/.whipdesk"
end
