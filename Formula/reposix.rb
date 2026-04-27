class Reposix < Formula
  desc "Git-native partial-clone exposing REST APIs as POSIX files for autonomous agents"
  homepage "https://github.com/reubenjohn/reposix"
  version "0.11.3"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/reubenjohn/reposix/releases/download/reposix-cli-v0.11.3/reposix-v0.11.3-aarch64-apple-darwin.tar.gz"
      sha256 "a57002382990a28a249316ab754d4f622be91e7d346be4d5bff8847445d3b3e2"
    else
      url "https://github.com/reubenjohn/reposix/releases/download/reposix-cli-v0.11.3/reposix-v0.11.3-x86_64-apple-darwin.tar.gz"
      sha256 "4c0d86ce4cf86dfcba0ff205733925b045b3f4ffaefcc898a2d7e405adbc3fe3"
    end
  end

  on_linux do
    url "https://github.com/reubenjohn/reposix/releases/download/reposix-cli-v0.11.3/reposix-v0.11.3-x86_64-unknown-linux-musl.tar.gz"
    sha256 "19955da60ce133c4d337de79085db193d5b0463271622e1f2d25f90df182ae27"
  end

  def install
    bin.install "reposix"
    bin.install "git-remote-reposix"
  end

  test do
    system "#{bin}/reposix", "--version"
  end
end
