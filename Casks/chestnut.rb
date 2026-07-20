cask "chestnut" do
  version "0.1.0"
  sha256 "244de3afab0b0a714fdd3110517351562dca4fd83bd1184d326c685e31a1540e"

  url "https://github.com/gapmiss/chestnut/releases/download/v#{version}/Chestnut.dmg"
  name "Chestnut"
  desc "Pixel-art desktop companion for multi-vault Obsidian users"
  homepage "https://github.com/gapmiss/chestnut"

  app "Chestnut.app"

  caveats <<~EOS
    Chestnut is not notarized. If macOS blocks the first launch, allow it in
    System Settings → Privacy & Security → "Open Anyway", or install with:
      brew install --cask --no-quarantine chestnut
  EOS

  zap trash: "~/Library/Application Support/Chestnut"
end
