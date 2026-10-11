# Homebrew tap for Vallaury

[Vallaury](https://vallaury.it) for macOS, installed with [Homebrew](https://brew.sh).

```sh
brew install --cask vallaury/vallaury/vallaury
```

Update with `brew upgrade --cask vallaury`. Uninstall with `brew uninstall --cask vallaury`
(add `--zap` to remove the app data as well).

The cask installs the official universal (Intel and Apple silicon) disk image from the
[GitHub releases](https://github.com/Vallaury/vallaury-desktop/releases) of the app,
after checking its SHA-256. The app is not signed with an Apple Developer ID yet, so the cask
removes the quarantine flag after installing; without Homebrew, the first launch needs a
right-click, then Open.

The app source is at https://github.com/Vallaury/vallaury-desktop (GPL-3.0-only).
