cask "echo" do
  version "1.2.0"
  sha256 "a628ee0b8c891242c1f1b2915a30df4f8d69cbc2865c078045fc92fe5deea60e"

  url "https://github.com/taylorbird/echo/releases/download/v#{version}/echo-#{version}-arm64.dmg"
  name "echo"
  desc "Matrix chat client"
  homepage "https://github.com/taylorbird/echo"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "echo.app"

  zap trash: [
    "~/Library/Application Support/dev.tbird.echo",
    "~/Library/Caches/dev.tbird.echo",
    "~/Library/Caches/echo-updater",
    "~/Library/Preferences/dev.tbird.echo.plist",
    "~/Library/Saved Application State/dev.tbird.echo.savedState",
    "~/Library/WebKit/dev.tbird.echo",
  ]
end
