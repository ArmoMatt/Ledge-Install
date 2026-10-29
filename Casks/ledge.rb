cask "ledge" do
  version "1.1.0"
  sha256 "ff0d63a316a53050c291764d1a38f61f2dade1b87287f0be9f34c2cdf465fe0a"

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
