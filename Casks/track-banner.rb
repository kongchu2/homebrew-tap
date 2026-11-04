cask "track-banner" do
  version "1.3.0"
  sha256 "066ebc530f755a0b37bdf8c260323929b91de12dc07bcb441c4b66297236f87d"

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
