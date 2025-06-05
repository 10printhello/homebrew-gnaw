class Gnaw < Formula
  desc "gnaw: blazingly fast, AI aware, drop-in replacement for grep"
  homepage "https://github.com/10printhello/gnaw"
  version "0.1.2"

  if Hardware::CPU.intel?
    url "https://gnaw-bin.s3.amazonaws.com/releases/gnaw-v0.1.2-darwin-x86_64.tar.gz"
    sha256 "bdab4e0557e4cee579e7b39ca10c1b58c882a1ff1a9ade59a1b2e22d8bbb6f0f"
  end

  if Hardware::CPU.arm?
    url "https://gnaw-bin.s3.amazonaws.com/releases/gnaw-v0.1.2-darwin-aarch64.tar.gz"
    sha256 "d8b6d3cf510a4ce1d82a71db7a43c1bb26a5b720f5db6497f01e080b20230353"
  end

  def install
    bin.install "gnaw"
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/gnaw --version")
  end
end