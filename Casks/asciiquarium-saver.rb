cask "asciiquarium-saver" do
  version "1.0.0"
  sha256 "bcf981bdd06ecae8098a9b8020413ccd2cb8fde637cacb209881d4a6a9e58d3d"

  url "https://github.com/MakeItAppenLabs/asciiquarium-saver/releases/download/v#{version}/Asciiquarium-#{version}.zip"
  name "Asciiquarium"
  desc "ASCII-art aquarium screen saver"
  homepage "https://github.com/MakeItAppenLabs/asciiquarium-saver"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  screen_saver "Asciiquarium.saver"

  zap trash: "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Preferences/ByHost/com.aaronmashburn.asciiquarium.*.plist"
end
