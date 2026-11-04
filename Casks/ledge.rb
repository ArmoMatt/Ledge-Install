cask "ledge" do
  version "1.3.0"
  sha256 "823f5918c57590a025672ee35a10ff0cc64fab99bd1a338181d470e22ea16b3e"

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
