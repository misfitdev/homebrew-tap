class GitRouter < Formula
  desc "Route SSH keys and HTTPS credentials by org/namespace in git remote URLs"
  homepage "https://github.com/misfitdev/git-router"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/misfitdev/git-router/releases/download/v0.1.1/git-router-aarch64-apple-darwin.tar.gz"
      sha256 "442087075a499d4612ce5c94cb5f2f32a6b6f2ced474e9f10c66b14ea03af6b3"
    else
      url "https://github.com/misfitdev/git-router/releases/download/v0.1.1/git-router-x86_64-apple-darwin.tar.gz"
      sha256 "236723887d38069cf657f3b6c51294f8b8f6d7e636a755b3d5f198d4f35f06b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/misfitdev/git-router/releases/download/v0.1.1/git-router-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d30062c72ad014fd4390de0701f4c23ec7b7d343bce8d0c27121458ef482baf6"
    else
      url "https://github.com/misfitdev/git-router/releases/download/v0.1.1/git-router-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "81ff0e189c8f73cc29a5d14ad700f256815dc988df6e0c9cea0973fe6796c2b2"
    end
  end

  def install
    bin.install "git-router"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-router --version")
  end
end
