# Homebrew tap for mosh-rs

[mosh-rs](https://github.com/Arunjay4213/mosh-rs) is the mobile shell (mosh) in Rust: wire-compatible with mosh 1.4, with a native Windows client and real scrollback.

```sh
brew install Arunjay4213/mosh-rs/mosh-rs
```

This installs `mosh`, `mosh-client` and `mosh-server` from the pre-built release archives.
It supports macOS on Apple silicon and Linux on x86_64 and arm64.
The formula conflicts with the `mosh` formula because both install the same three programs; `brew unlink mosh` first if you have it.
