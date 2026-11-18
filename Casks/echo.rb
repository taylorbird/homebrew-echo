cask "echo" do
  version "1.7.0"
  sha256 "1c0f67502bfdedc6331bf54e002ecc9eda797da1387bac4d3c906373ff07facd"

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
