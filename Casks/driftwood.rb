cask "driftwood" do
  version "0.4.1"
  sha256 "eb598a08bedb750dd781e37402f0b4566bf3c15f20e1b01fe4ef3e8051042089"

  url "https://github.com/gapmiss/driftwood/releases/download/v#{version}/Driftwood.dmg"
  name "Driftwood"
  desc "Floating, always-on-top terminal panel with tabs and global hotkeys"
  homepage "https://github.com/gapmiss/driftwood"

  depends_on macos: :sonoma

  app "Driftwood.app"

  zap trash: [
    "~/Library/Application Support/Driftwood",
    "~/Library/Logs/Driftwood",
  ]

  caveats <<~EOS
    Driftwood has no Dock icon and no menu bar item, so nothing on screen says
    it is running. Press control-option-T to summon the panel, and press it
    again to hide it. Right-click the panel for its settings menu.

    Driftwood is not notarized. If macOS blocks the first launch, allow it in
    System Settings → Privacy & Security → "Open Anyway", or clear the
    quarantine flag:
      xattr -dr com.apple.quarantine /Applications/Driftwood.app

    Before uninstalling, turn off "Launch at Login" if you ever turned it on:
    right-click the panel and uncheck it. macOS holds that registration and it
    outlives the app bundle, so removing the app first leaves a login item
    pointing at nothing.
  EOS
end
