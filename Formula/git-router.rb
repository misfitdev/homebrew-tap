class GitRouter < Formula
  desc "Route SSH keys and HTTPS credentials by org/namespace in git remote URLs"
  homepage "https://github.com/misfitdev/git-router"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/misfitdev/git-router/releases/download/v0.2.0/git-router-aarch64-apple-darwin.tar.gz"
      sha256 "35e9aca9cf95fc3657e9e69a34c7b982a1b1c105a2ca8918ac4f220c40604304"
    else
      url "https://github.com/misfitdev/git-router/releases/download/v0.2.0/git-router-x86_64-apple-darwin.tar.gz"
      sha256 "643f550b1cdb7b5b0379b4bdccebf3fd0d38709547b2bc1859a7270adaa78733"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/misfitdev/git-router/releases/download/v0.2.0/git-router-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e515f369813a72f8d42ab4760f085ece3e5756af89e20429242aa69d9e2ad5bd"
    else
      url "https://github.com/misfitdev/git-router/releases/download/v0.2.0/git-router-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bccf2987e62bf2194c909cd84cd58ce1135321b07b24d4397a2a1b3ff000fddc"
    end
  end

  def install
    bin.install "git-router"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-router --version")
  end
end
