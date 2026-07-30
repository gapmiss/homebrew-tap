cask "chestnut" do
  version "0.7.0"
  sha256 "4f49853c92cff8f0f296d47d1c886d9000a2ba26c248fe9770452e624c3fbbf4"

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
