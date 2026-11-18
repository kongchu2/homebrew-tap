cask "track-banner" do
  version "1.5.0"
  sha256 "70eae5589381feed64f762f3831a83d81c6da264b3e74c4a199d485b9a694332"

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
