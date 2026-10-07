cask "triwarden" do
  version "0.1.1"
  sha256 "0bdcb63bdb7d91029d7c08aea0907ed021e25ad348fddb449ecf7d330b484c43"

  url "https://github.com/sinhong2011/triwarden/releases/download/v#{version}/Triwarden-#{version}.dmg"
  name "Triwarden"
  desc "Native macOS client for Vaultwarden and Bitwarden"
  homepage "https://github.com/sinhong2011/triwarden"

  depends_on macos: ">= :tahoe"

  app "Triwarden.app"
  binary "#{appdir}/Triwarden.app/Contents/MacOS/tw"

  zap trash: [
    "~/Library/Group Containers/FX3VR69P5K.io.github.sinhong2011.triwarden",
    "~/Library/Containers/io.github.sinhong2011.triwarden",
  ]
end
