cask "echo" do
  version "1.6.0"
  sha256 "449bdf0ab2424b2b8dcb9a52b4e60dc8ebac075f1c4474a1605efe3f9c6e86b4"

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
