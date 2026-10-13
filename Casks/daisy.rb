cask "daisy" do
  version "0.10.1"
  sha256 "f27d6207c881060ebb6ef24e7c0bd715e58696b3f3af7d89ecf86230f745bce8"

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
