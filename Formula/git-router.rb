class GitRouter < Formula
  desc "Route SSH keys and HTTPS credentials by org/namespace in git remote URLs"
  homepage "https://github.com/misfitdev/git-router"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/misfitdev/git-router/releases/download/v0.3.0/git-router-aarch64-apple-darwin.tar.gz"
      sha256 "9eb85652e1241d412acf8b348ec16f3a73bfe7c3a7ae10be28129f37c7cc9b16"
    else
      url "https://github.com/misfitdev/git-router/releases/download/v0.3.0/git-router-x86_64-apple-darwin.tar.gz"
      sha256 "bb738a5539f541c88f9c1aa4fe11ed08a7f6d53d4395520ff68f1ca7c4e1c725"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/misfitdev/git-router/releases/download/v0.3.0/git-router-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a5a6dfcd7f3686ed63a671cfb880e13873205850d1e0e88b302648401827a736"
    else
      url "https://github.com/misfitdev/git-router/releases/download/v0.3.0/git-router-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba54828b37ab5c7384871ebcf7891c73c997b02ae7b88bfbfc9509e00e9cde03"
    end
  end

  def install
    bin.install "git-router"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-router --version")
  end
end
