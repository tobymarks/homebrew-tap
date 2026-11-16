cask "inlaut" do
  version "0.6.1"

  language "de" do
    sha256 "2ada62410859c87bdffd72426196e9d6d88ae9a9aadc0f40df3db0e43a872f64"
    ""
  end
  language "en", default: true do
    sha256 "bbdab3cd576c3040287d33854f2519d00421187dd347e1566d95e22341229f4d"
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
