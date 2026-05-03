class GitRouter < Formula
  desc "Route SSH keys and HTTPS credentials by org/namespace in git remote URLs"
  homepage "https://github.com/misfitdev/git-router"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/misfitdev/git-router/releases/download/v0.1.0/git-router-aarch64-apple-darwin.tar.gz"
      sha256 "81f9eea0c6e2d55a23354f23d6c91d36f6adfd9bf693e897941b064aed125569"
    else
      url "https://github.com/misfitdev/git-router/releases/download/v0.1.0/git-router-x86_64-apple-darwin.tar.gz"
      sha256 "c9bb65a45e5e6364b318d25f768fe0298c06205c4da0cea3228fa8e93e0d6131"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/misfitdev/git-router/releases/download/v0.1.0/git-router-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9464de7e2a2baf33c2fe127e8c7b0d9488ab1685e1aa09f4a591c5ab489240e2"
    else
      url "https://github.com/misfitdev/git-router/releases/download/v0.1.0/git-router-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "641699887a74bfb9f6d3e7e70840dcb82df1902c84adcb34b233d734146d7e9c"
    end
  end

  def install
    bin.install "git-router"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-router --version")
  end
end
