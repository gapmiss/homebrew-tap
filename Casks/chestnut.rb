cask "chestnut" do
  version "0.8.0"
  sha256 "261c3c43fcf4492930cf49e9fde7eb3c88992b3bcf67eee4e5141be3e6105e48"

  url "https://github.com/gapmiss/chestnut/releases/download/v#{version}/Chestnut.dmg"
  name "Chestnut"
  desc "Pixel-art desktop companion for Obsidian users"
  homepage "https://github.com/gapmiss/chestnut"

  app "Chestnut.app"

  caveats <<~EOS
    Chestnut is not notarized. If macOS blocks the first launch, allow it in
    System Settings → Privacy & Security → "Open Anyway", or clear the
    quarantine flag:
      xattr -dr com.apple.quarantine /Applications/Chestnut.app

    A later "brew upgrade" does not ask again at the time. The first restart
    after an upgrade may ask once, with a "Chestnut.app Not Opened" dialog:
    click Done, then use "Open Anyway" again. Do not click "Move to Trash",
    which deletes the app. Restarts with no upgrade in between do not ask.
  EOS

  zap trash: "~/Library/Application Support/Chestnut"
end
