cask "inlaut" do
  version "0.6.0"

  language "de" do
    sha256 "3a2de8f3fecf872b86b288d44cf1c01e8b868b504ad956e73f4e529e9b44c5ca"
    ""
  end
  language "en", default: true do
    sha256 "6b3902c479e0c23dbabb294ae456a430a1992ad68fb1f2bef403aa8819b26aa6"
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
