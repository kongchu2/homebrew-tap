cask "track-banner" do
  version "1.3.1"
  sha256 "14ef6b92bab35902ba6c7cb305cd40cd37b84c79e8474ee66c08f933611c6ff2"

  url "https://github.com/kongchu2/track-banner/releases/download/v#{version}/TrackBanner-#{version}.zip"
  name "Track Banner"
  desc "Track-change banners with album art for Spotify"
  homepage "https://github.com/kongchu2/track-banner"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "TrackBanner.app"

  uninstall quit: "com.kongchu2.trackbanner"

  zap trash: "~/Library/Preferences/com.kongchu2.trackbanner.plist"
end
