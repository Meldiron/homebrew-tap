cask "meraline" do
  version "1.0.0"
  sha256 "437da9b15e72013cbdc153d2e324abdc436cbe4247d122bd2598239bc51b8468"

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
