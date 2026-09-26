cask "meraline" do
  version "1.3.0"
  sha256 "52179be04844735e91c75f883ec005c7554e2582cc3fe775f98988970210421a"

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
