cask "meraline" do
  version "1.7.0"
  sha256 "bd4c93d1301d91d9d1d2e6940769196d5defecde8318ccec950976582ad8acbc"

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
