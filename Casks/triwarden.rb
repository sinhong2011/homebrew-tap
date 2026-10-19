cask "triwarden" do
  version "0.3.0"
  sha256 "ee1625e687b38447edce3ac128638695d5d7fc61e49a52dc35918d24ba8576ac"

  url "https://github.com/sinhong2011/triwarden/releases/download/v#{version}/Triwarden-#{version}.dmg"
  name "Triwarden"
  desc "Native macOS client for Vaultwarden and Bitwarden"
  homepage "https://github.com/sinhong2011/triwarden"

  depends_on macos: :tahoe

  app "Triwarden.app"
  binary "#{appdir}/Triwarden.app/Contents/MacOS/tw"

  zap trash: [
    "~/Library/Group Containers/FX3VR69P5K.io.github.sinhong2011.triwarden",
    "~/Library/Containers/io.github.sinhong2011.triwarden",
  ]
end
