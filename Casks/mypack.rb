cask "mypack" do
  version "0.2.0"
  sha256 "4d7464972de5ed802e80f052eacfbc929552b57c6161991bea3ca3eddf05c91b"

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
