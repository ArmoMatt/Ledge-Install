cask "ledge" do
  version "1.2.0"
  sha256 "51c51f1e5cb4bd5ef0b568143d5ea5a347f16d0e9148874e50278f7375d7e494"

  url "https://ledgeapp.vercel.app/downloads/Ledge-#{version}.dmg"
  name "Ledge"
  desc "Turns the notch into music controls, widgets and a shelf for files"
  homepage "https://ledgeapp.vercel.app/"

  livecheck do
    url "https://ledgeapp.vercel.app/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Ledge.app"

  uninstall quit: "ca.armotech.Ledge"

  zap trash: [
    "~/Library/Application Support/Ledge",
    "~/Library/Caches/ca.armotech.Ledge",
    "~/Library/HTTPStorages/ca.armotech.Ledge",
    "~/Library/Preferences/ca.armotech.Ledge.plist",
  ]
end
