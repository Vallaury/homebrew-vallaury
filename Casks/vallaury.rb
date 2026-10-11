cask "vallaury" do
  version "0.1.2"
  sha256 "e757484cd1f4befd29f7eb592540620ad7f19d43a1f295b5bd216df2c711b03c"

  url "https://github.com/sappafrancesco/vallaury-desktop/releases/download/v#{version}/Vallaury-#{version}-mac-universal.dmg",
      verified: "github.com/sappafrancesco/vallaury-desktop/"
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
