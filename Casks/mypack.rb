cask "mypack" do
  version "0.1.1"
  sha256 "48c8c9b1d8792c3fbfce4ce05fe64f4776f7517b9afa67c1f65a9dc22d4cc7f0"

  url "https://github.com/sinhong2011/mypack/releases/download/v#{version}/mypack-#{version}.dmg"
  name "Mypack"
  desc "Turn any website or local HTML project into a native desktop app"
  homepage "https://github.com/sinhong2011/mypack"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Mypack.app"
  binary "#{appdir}/Mypack.app/Contents/MacOS/Mypack", target: "mypack"

  zap trash: [
    "~/Library/Application Support/mypack",
    "~/Library/Application Support/mypack-apps",
    "~/Library/Caches/dev.mypack.builder",
    "~/Library/Preferences/dev.mypack.builder.plist",
    "~/Library/Saved Application State/dev.mypack.builder.savedState",
  ]
end
