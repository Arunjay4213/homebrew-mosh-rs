class MoshRs < Formula
  desc "Mobile shell (mosh) in Rust: wire-compatible with mosh 1.4, with real scrollback"
  homepage "https://github.com/Arunjay4213/mosh-rs"
  version "0.1.2"
  license "GPL-3.0-or-later"

  on_macos do
    # There is no Intel macOS build.
    depends_on arch: :arm64
    url "https://github.com/Arunjay4213/mosh-rs/releases/download/v0.1.2/mosh-rs-v0.1.2-aarch64-apple-darwin.tar.gz"
    sha256 "982295caeb3257f7b6581468cdb5450891db9a716408de7eb44c049e76702d5d"
  end

  on_linux do
    on_arm do
      url "https://github.com/Arunjay4213/mosh-rs/releases/download/v0.1.2/mosh-rs-v0.1.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "00331e3e24586752639bb4ac628ce77a65bc452656b239b3b7a840fef89f615a"
    end
    on_intel do
      url "https://github.com/Arunjay4213/mosh-rs/releases/download/v0.1.2/mosh-rs-v0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "936f78fdfdc2a479d7c10a8eb2675ec45ce793792d8d58872b2501f1dd5afe27"
    end
  end

  conflicts_with "mosh", because: "both install mosh, mosh-client and mosh-server"

  def install
    bin.install "mosh", "mosh-client", "mosh-server"
  end

  test do
    assert_match "mosh-rs 0.1.2", shell_output("#{bin}/mosh --version")
    assert_match "mosh-rs 0.1.2", shell_output("#{bin}/mosh-client --version")
  end
end
