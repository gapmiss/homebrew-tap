cask "chestnut" do
  version "0.4.0"
  sha256 "b07331c558aadab525e4c0c22f49d332d6c740e8dc0ab37cce586ca884117d64"

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
