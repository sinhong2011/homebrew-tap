cask "mypack" do
  version "0.4.0"
  sha256 "ba95cd07cdbd9525507523245ca81e094fb597a37fabb9dc9073bf79a3ccdb33"

  url "https://github.com/sinhong2011/mypack/releases/download/v#{version}/mypack-#{version}.dmg"
  name "MyPack"
  desc "Turn any website or local HTML project into a native desktop app"
  homepage "https://github.com/sinhong2011/mypack"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "MyPack.app"
  binary "#{appdir}/MyPack.app/Contents/MacOS/MyPack", target: "mypack"

  zap trash: [
    "~/Library/Application Support/mypack",
    "~/Library/Application Support/mypack-apps",
    "~/Library/Caches/dev.mypack.builder",
    "~/Library/Preferences/dev.mypack.builder.plist",
    "~/Library/Saved Application State/dev.mypack.builder.savedState",
  ]
end
