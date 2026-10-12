cask "inlaut" do
  version "0.4.0"

  language "de" do
    sha256 "4620b04418600a68c520655a876a5ed61f92141d93b6c3cebd71292acbc24e38"
    ""
  end
  language "en", default: true do
    sha256 "772ebc8519ace55cdd9e6e671a8fb7ffd087078cf162c3e8de3e9643de175bdd"
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
