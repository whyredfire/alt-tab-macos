cask "alt-tab" do
  # Always the latest release: the fork can re-release a version, and Sparkle updates the app after install,
  # so `brew upgrade` leaves it alone
  version :latest
  sha256 :no_check

  url "https://github.com/whyredfire/alt-tab-macos/releases/latest/download/AltTab.zip"
  name "AltTab"
  desc "Enable Windows-like alt-tab"
  homepage "https://github.com/whyredfire/alt-tab-macos"

  depends_on macos: :monterey

  app "AltTab.app"

  # AltTab isn't notarized, so Gatekeeper would otherwise block its first launch
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/AltTab.app"]
  end

  uninstall quit: "com.lwouis.alt-tab-macos"

  zap trash: [
    "~/Library/Application Support/com.lwouis.alt-tab-macos",
    "~/Library/Caches/com.lwouis.alt-tab-macos",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.lwouis.alt-tab-macos",
    "~/Library/Cookies/com.lwouis.alt-tab-macos.binarycookies",
    "~/Library/HTTPStorages/com.lwouis.alt-tab-macos",
    "~/Library/HTTPStorages/com.lwouis.alt-tab-macos.binarycookies",
    "~/Library/LaunchAgents/com.lwouis.alt-tab-macos.plist",
    "~/Library/Preferences/com.lwouis.alt-tab-macos.license.plist",
    "~/Library/Preferences/com.lwouis.alt-tab-macos.plist",
    "~/Library/Preferences/com.lwouis.alt-tab-macos.usage.plist",
  ]
end
