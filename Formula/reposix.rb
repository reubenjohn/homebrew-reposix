class Reposix < Formula
  desc "Git-native partial-clone exposing REST APIs as POSIX files for autonomous agents"
  homepage "https://github.com/reubenjohn/reposix"
  version "0.12.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/reubenjohn/reposix/releases/download/v0.12.0/reposix-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "5248a9441384aae6a5537afafea363a5d22946e4673b84b6dd104304f53fac77"
    else
      url "https://github.com/reubenjohn/reposix/releases/download/v0.12.0/reposix-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "046a12f1109e4714f9fa769cbaeda911a6029db4780acd172064a6f76d78560d"
    end
  end

  on_linux do
    url "https://github.com/reubenjohn/reposix/releases/download/v0.12.0/reposix-v0.12.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "ba53d2d46c33143f3eeb136571974c66b7091bed17e297722dc4110763adea57"
  end

  def install
    bin.install "reposix"
    bin.install "git-remote-reposix"
  end

  test do
    system "#{bin}/reposix", "--version"
  end
end
