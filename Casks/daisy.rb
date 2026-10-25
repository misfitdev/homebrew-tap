cask "daisy" do
  version "0.11.0"
  sha256 "996dc29997ad8d095dfebd404c3c8acde5693e29d08ba04565e8f7e0332d637c"

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
