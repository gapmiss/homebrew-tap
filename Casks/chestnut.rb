cask "chestnut" do
  version "0.2.1"
  sha256 "148217fb9f9162747cf7e3c1d6c15131bfd17cd2fec82c09f25cf4b2e79d36c5"

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
