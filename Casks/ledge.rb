cask "ledge" do
  version "1.5.0"
  sha256 "5aa55892118f48c82430b6c04ec942013834091cc50dd8c9449ab13b78073398"

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
