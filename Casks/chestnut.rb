cask "chestnut" do
  version "0.6.1"
  sha256 "a6d799f68afa602a9d6e06fb1caeca7405fb8bdaf489d5d7a1de00e836c4515c"

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
