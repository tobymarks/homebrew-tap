cask "inlaut" do
  version "0.5.1"

  language "de" do
    sha256 "ce623d173b70c0d848a3d882377394cdeb5d4811a85b549e3ed82694b23f9ff4"
    ""
  end
  language "en", default: true do
    sha256 "df70888c13672da123d368e26aed4f2b147c0c2326e77e17743c5b726a836058"
    "-en"
  end

  url "https://github.com/tobymarks/inlaut/releases/download/v#{version}/Inlaut-#{version}#{language}.dmg"
  name "inlaut"
  desc "Menu bar dictation with on-device speech recognition for German and English"
  homepage "https://inlaut.de/en"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Inlaut.app"

  zap trash: [
    "~/Library/Application Support/Inlaut",
    "~/Library/Caches/de.tobymarks.inlaut",
    "~/Library/HTTPStorages/de.tobymarks.inlaut",
    "~/Library/Preferences/de.tobymarks.inlaut.plist",
  ]
end
