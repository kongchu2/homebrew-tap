cask "track-banner" do
  version "1.2.0"
  sha256 "48193f73a068364ce5ec99f8be58061baeda4bd15f005c7005db4445969e005e"

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
