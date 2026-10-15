cask "daisy" do
  version "0.10.3"
  sha256 "b76bbf677a375df86dcece444db1643ab4fa43671ece9fcbf31e7301232fd337"

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
