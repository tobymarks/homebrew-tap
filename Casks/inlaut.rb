cask "inlaut" do
  version "0.3.0"

  language "de" do
    sha256 "03e165306f93d07bef1748e194bedc863006e41da1b59e38e9ef036f20b67baf"
    ""
  end
  language "en", default: true do
    sha256 "06026a309c848ed5f5e7623b537aab7462875341495fa09933817a9e0cc72ba8"
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
