cask "echo" do
  version "1.4.0"
  sha256 "a4ccacfbd809ea9d795a3b8efa5ee4943f576d96e498d6d3a3ebf88722fea0a0"

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
