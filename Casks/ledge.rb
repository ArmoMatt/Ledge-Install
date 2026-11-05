cask "ledge" do
  version "1.4.0"
  sha256 "21d363adc98fcfcd75e7e04d48955d486928ac2230e0d25f97cd924ad6f0f47b"

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
