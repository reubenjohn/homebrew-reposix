class Reposix < Formula
  desc "Git-native partial-clone exposing REST APIs as POSIX files for autonomous agents"
  homepage "https://github.com/reubenjohn/reposix"
  version "0.11.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/reubenjohn/reposix/releases/download/v0.11.0/reposix-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "b2316ab47ce0b862c0e5099ab0b027c418d93852300237185bb7cb871c871e8a"
    else
      url "https://github.com/reubenjohn/reposix/releases/download/v0.11.0/reposix-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "b3527500cd8a5ca5b9bdf6ece965ada6e537fa9473f1e0f9bacc8623d9306620"
    end
  end

  on_linux do
    url "https://github.com/reubenjohn/reposix/releases/download/v0.11.0/reposix-v0.11.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "852352470e81b0be22884ad90b76db1c9c1e73bd9c168f0d35138608182f969f"
  end

  def install
    bin.install "reposix"
    bin.install "git-remote-reposix"
  end

  test do
    system "#{bin}/reposix", "--version"
  end
end
