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

    Whether a later "brew upgrade" asks again varies by macOS version. If it
    does, the same fix applies.
  EOS

  zap trash: "~/Library/Application Support/Chestnut"
end
