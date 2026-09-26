cask "meraline" do
  version "1.1.0"
  sha256 "4f41a226572d17d4132e3ec5e418271c035e7dfe5e736bfe72650f0c8a884343"

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
