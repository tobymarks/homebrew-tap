cask "inlaut" do
  version "0.5.0"

  language "de" do
    sha256 "622e8b481512af8f4a5d9858cca657cfbdf86e4a3cf602a819d69a9945d0d7c1"
    ""
  end
  language "en", default: true do
    sha256 "1b03a92a2fdab8bb200513d7a4605910cfb4eb049ab6cc11f3f1c7d6705ec688"
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
