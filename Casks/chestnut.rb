cask "chestnut" do
  version "0.6.0"
  sha256 "b6c4055bf75b55092733e103cc0e91bf93c8cad5e4c2b9245ab7eb73d8c14aff"

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
