class GitRouter < Formula
  desc "Route SSH keys and HTTPS credentials by org/namespace in git remote URLs"
  homepage "https://github.com/misfitdev/git-router"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/misfitdev/git-router/releases/download/v0.1.2/git-router-aarch64-apple-darwin.tar.gz"
      sha256 "a4748258384dc1c5b83ae1dd0bdd6e782bea42cda87376264c8c96615a3a3def"
    else
      url "https://github.com/misfitdev/git-router/releases/download/v0.1.2/git-router-x86_64-apple-darwin.tar.gz"
      sha256 "0ba42237f13fd49249c79f3fd89122e365face6f26f62b19a36e316d8aa66cb9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/misfitdev/git-router/releases/download/v0.1.2/git-router-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aef56bdda38ebb497abf566421ba977ee8ea2c0a092e1ecd400c9437b947d9d9"
    else
      url "https://github.com/misfitdev/git-router/releases/download/v0.1.2/git-router-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "203971fd6823480882035ebfeebf81c8595c0c64fae2eb8dd74c23b79f4a4266"
    end
  end

  def install
    bin.install "git-router"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-router --version")
  end
end
