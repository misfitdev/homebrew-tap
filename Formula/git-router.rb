class GitRouter < Formula
  desc "Route SSH keys and HTTPS credentials by org/namespace in git remote URLs"
  homepage "https://github.com/misfitdev/git-router"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/misfitdev/git-router/releases/download/v0.3.0/git-router-aarch64-apple-darwin.tar.gz"
      sha256 "06e9f273d454494ed4478d6ec8d9ba98a82875877a1525b11b0f3c8c6ecaaa95"
    else
      url "https://github.com/misfitdev/git-router/releases/download/v0.3.0/git-router-x86_64-apple-darwin.tar.gz"
      sha256 "29c208c25992600244dba1caa91dfbd4596314f9169fe798fc950f9c62904fdb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/misfitdev/git-router/releases/download/v0.3.0/git-router-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7909a2d89ddcf58aabc42702ac9cf505975435682a9ade513f3f6ac7870f6ba7"
    else
      url "https://github.com/misfitdev/git-router/releases/download/v0.3.0/git-router-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3f74dfaf8885f4669af25973027aba2090b11bc0a32324d70d46213a531fcb4"
    end
  end

  def install
    bin.install "git-router"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-router --version")
  end
end
