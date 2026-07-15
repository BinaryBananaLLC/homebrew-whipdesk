cask "whipdesk" do
  arch arm: "arm64", intel: "x64"

  version "1.0.2"
  sha256 arm:   "9f449a2f52b7eafc25e05fdaf5a340a33f972e379a9fec1af379736b115ec9ce",
         intel: "be4e8f72405a35a8ac40fe9f0b9a16cbb5e8141f1683640859170fe3d0284c6e"

  url "https://github.com/BinaryBananaLLC/WhipDesk/releases/download/v#{version}/whipdesk-#{version}-macos-#{arch}.pkg"
  name "WhipDesk"
  desc "Remote desktop and AI-agent status alerts, controlled from a mobile browser"
  homepage "https://whipdesk.com/"

  depends_on macos: :monterey

  pkg "whipdesk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.binarybanana.whipdesk"

  zap trash: "~/.whipdesk"
end
