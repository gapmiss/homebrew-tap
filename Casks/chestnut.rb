cask "chestnut" do
  version "0.5.0"
  sha256 "a75d9dee0a6bdb0a70e343d8f3f1ed08fad4456624a3d6877d24a188a5969f47"

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

    A blocked launch comes back after "brew upgrade", since the new copy is
    quarantined too. Run the same command again.
  EOS

  zap trash: "~/Library/Application Support/Chestnut"
end
