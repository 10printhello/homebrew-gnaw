class Gnaw < Formula
  desc "Blazingly fast, AI aware, drop-in replacement for grep"
  homepage "https://gnaw.dev"
  # Point to the source tarball for your Git tag:
  url "https://github.com/10printhello/gnaw/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT" 

  # If your Rust code requires a minimum Rust version, you can specify:
  depends_on "rust" => :build

  # Some Rust projects need additional build dependencies, e.g. pkg-config or openssl:
  # depends_on "pkg-config" => :build
  # depends_on "openssl@3"

  def install
    # If you want to fetch dependencies & build via Cargo:
    system "cargo", "install", *std_cargo_args

    # Alternatively, if you prefer to do a manual release build:
    # system "cargo", "build", "--release", "--locked"
    # Then:
    # bin.install "target/release/gnaw"
  end

  test do
    # A simple test to verify installation. For example, if 'gnaw --version' prints something:
    assert_match version.to_s, shell_output("#{bin}/gnaw --version")
    # Or test basic functionality:
    # (create a small input file, run `gnaw` on it, and verify output.)
  end
end

