# homebrew-echo

Homebrew tap for [echo](https://github.com/taylorbird/echo), a Matrix chat app for macOS.

```sh
brew tap taylorbird/echo
brew trust --cask taylorbird/echo/echo
brew install --cask taylorbird/echo/echo
```

Homebrew 7 and later only load casks from taps you trust, hence `brew trust`.

echo updates itself after install. `echo/release-electron.sh` in the echo repo bumps this cask
on each release.
