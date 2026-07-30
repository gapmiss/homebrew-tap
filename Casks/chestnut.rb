cask "chestnut" do
  version "0.6.2"
  sha256 "457820d3b3bb3a0c22bab8ad4e09354becb21c278e440636e2b0651ef1534695"

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
