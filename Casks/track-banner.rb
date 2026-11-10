cask "track-banner" do
  version "1.4.0"
  sha256 "a29ba41f75d14f1ba44ff4ea420aae59d13b352b7e4978ff02b37076086fba46"

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
