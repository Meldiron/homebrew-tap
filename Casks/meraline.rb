cask "meraline" do
  version "1.13.0"
  sha256 "58ff792b7b62bb542fd7d80f50ea81a5a398eb4e575dac361615457b332e472b"

  url "https://github.com/Meldiron/meraline/releases/download/v#{version}/Meraline-#{version}.zip"
  name "Meraline"
  desc "Quick, ephemeral AI chats in a floating panel, opened with a keyboard shortcut"
  homepage "https://github.com/Meldiron/meraline"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Meraline.app"

  zap trash: [
    "~/Library/Caches/com.meldiron.meraline",
    "~/Library/HTTPStorages/com.meldiron.meraline",
    "~/Library/Preferences/com.meldiron.meraline.plist",
  ]
end
