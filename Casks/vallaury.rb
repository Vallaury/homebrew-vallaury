cask "vallaury" do
  version "0.1.3"
  sha256 "38e24da60e440c470a39c6dd018cf189c4bf86babf291ec2b81902a196f43f6a"

  url "https://github.com/Vallaury/vallaury-desktop/releases/download/v#{version}/Vallaury-#{version}-mac-universal.dmg",
      verified: "github.com/Vallaury/vallaury-desktop/"
  name "Vallaury"
  desc "Timetable, tasks, notes and school notifications"
  homepage "https://vallaury.it/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false

  app "Vallaury.app"

  # The app is not signed with an Apple Developer ID yet, so macOS would block the first launch.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Vallaury.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Vallaury",
    "~/Library/Caches/it.vallaury.desktop",
    "~/Library/Preferences/it.vallaury.desktop.plist",
    "~/Library/Saved Application State/it.vallaury.desktop.savedState",
  ]
end
