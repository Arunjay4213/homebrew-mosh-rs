# Homebrew tap for mosh-rs

[mosh-rs](https://github.com/Arunjay4213/mosh-rs) is a Rust port of mosh, the mobile shell.
It is wire-compatible with mosh 1.4 and adds a native Windows client and real scrollback.

```sh
brew install Arunjay4213/mosh-rs/mosh-rs
```

This installs `mosh`, `mosh-client` and `mosh-server` from the pre-built release archives, for macOS on Apple silicon and Linux on x86_64 and arm64.
Because the `mosh` formula installs the same three programs, the two conflict, so if you have it installed, run `brew unlink mosh` first.
