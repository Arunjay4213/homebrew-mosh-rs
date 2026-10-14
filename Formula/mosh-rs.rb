class MoshRs < Formula
  desc "Mobile shell (mosh) in Rust: wire-compatible with mosh 1.4, with real scrollback"
  homepage "https://github.com/Arunjay4213/mosh-rs"
  license "GPL-3.0-or-later"

  on_macos do
    # There is no Intel macOS build.
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/Arunjay4213/mosh-rs/releases/download/v0.1.3/mosh-rs-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "5e00f02021a80f4b64889826153424474d0791121f839d04baf7cdf8fdc82ad4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Arunjay4213/mosh-rs/releases/download/v0.1.3/mosh-rs-v0.1.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "06d913a0c10405aa48c11f48bcbe57e539ade907b679372f4cc725e5c51efe72"
    end
    on_intel do
      url "https://github.com/Arunjay4213/mosh-rs/releases/download/v0.1.3/mosh-rs-v0.1.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "58253ac8e0601ff1979c8b03e7dce05cf28cce4d4840dd562132406e5c5b8f94"
    end
  end

  conflicts_with "mosh", because: "both install mosh, mosh-client and mosh-server"

  def install
    bin.install "mosh", "mosh-client", "mosh-server"
  end

  test do
    assert_match "mosh-rs 0.1.3", shell_output("#{bin}/mosh --version")
    assert_match "mosh-rs 0.1.3", shell_output("#{bin}/mosh-client --version")
  end
end
