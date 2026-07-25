cask "chestnut" do
  version "0.3.0"
  sha256 "a01ee2c80e4a6ac34c9847ba077deacf91fb5547feb86525dfb3edd044a1abef"

  url "https://github.com/gapmiss/chestnut/releases/download/v#{version}/Chestnut.dmg"
  name "Chestnut"
  desc "Pixel-art desktop companion for Obsidian users"
  homepage "https://github.com/gapmiss/chestnut"

  app "Chestnut.app"

  caveats <<~EOS
    Chestnut is not notarized. If macOS blocks the first launch, allow it in
    System Settings → Privacy & Security → "Open Anyway", or install with:
      brew install --cask --no-quarantine chestnut

    "brew upgrade" does not carry --no-quarantine forward, so a blocked launch
    can come back after upgrading. To clear it:
      xattr -dr com.apple.quarantine /Applications/Chestnut.app
  EOS

  zap trash: "~/Library/Application Support/Chestnut"
end
