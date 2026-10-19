<div align="center">

<a href="https://alt-tab.app/"><img src="docs/readme/main.svg" alt="AltTab Pro — 7.4M downloads — 15K GitHub stars — Get AltTab"/></a>

<a href="https://jb.gg/OpenSource"><img src="docs/readme/sponsor.svg" alt="Sponsored by JetBrains" width="900"/></a>

</div>

## Installation

With [Homebrew](https://brew.sh):

```sh
brew tap whyredfire/alt-tab https://github.com/whyredfire/alt-tab-macos
brew install --cask whyredfire/alt-tab/alt-tab
```

Or by hand:

1. Download [`AltTab.zip`](https://github.com/whyredfire/alt-tab-macos/releases/latest/download/AltTab.zip),
   unzip it and move AltTab to `/Applications`.
2. AltTab isn't notarized, so macOS blocks the first launch. Choose **Open Anyway** in
   System Settings › Privacy & Security, or run:
   ```sh
   xattr -dr com.apple.quarantine /Applications/AltTab.app
   ```

AltTab updates itself after that.
