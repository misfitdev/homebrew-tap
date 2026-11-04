cask "daisy" do
  version "0.11.3"
  sha256 "29ed5796f7aca2879a92d3842334f84533125e58ab201f2887e471bf3ccf26ca"

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
