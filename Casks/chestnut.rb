cask "chestnut" do
  version "0.2.0"
  sha256 "520602e96b08ffe629f23f8df45546eda5cae22735a86e4c68d880f3ad4880f9"

  url "https://github.com/gapmiss/chestnut/releases/download/v#{version}/Chestnut.dmg"
  name "Chestnut"
  desc "Pixel-art desktop companion for Obsidian users"
  homepage "https://github.com/gapmiss/chestnut"

  app "Chestnut.app"

  caveats <<~EOS
    Chestnut is not notarized. If macOS blocks the first launch, allow it in
    System Settings → Privacy & Security → "Open Anyway", or install with:
      brew install --cask --no-quarantine chestnut
  EOS

  zap trash: "~/Library/Application Support/Chestnut"
end
