cask "triwarden" do
  version "0.5.2"
  sha256 "8d44b07a491daf6f8801ba59100bf8e0c6e3dcd3ab11ef2b7f1a014e5c356a8b"

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
