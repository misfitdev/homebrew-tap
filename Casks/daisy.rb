cask "daisy" do
  version "0.7.0"
  sha256 "2d2836d54aeb2b10b105d9226549f87cbc0e121e62e626b21701cd56760f2e82"

  url "https://github.com/misfitdev/daisy/releases/download/v#{version}/Daisy-#{version}-macos-arm64.dmg"
  name "Daisy"
  desc "Share keyboard, pointer, trackpad swipes, and clipboard across systems"
  homepage "https://misfitdev.github.io/daisy/"

  livecheck do
    url "https://github.com/misfitdev/daisy/releases/latest"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Daisy.app"
end
