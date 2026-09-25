# Meldiron's Homebrew tap

Casks for Mac apps by [Meldiron](https://github.com/Meldiron).

```sh
brew install --cask meldiron/tap/meraline
```

| Cask | App |
| --- | --- |
| `meraline` | [Meraline](https://github.com/Meldiron/meraline): quick, ephemeral AI chats in a floating panel, opened with a keyboard shortcut. macOS 26 or later. |

Meraline updates itself with Sparkle, so `brew upgrade` is only needed if you turned automatic updates off. `brew uninstall --zap --cask meraline` also removes its preferences; API keys stay in your Keychain under the service `com.meldiron.meraline.api-keys` until you delete them in Keychain Access.

The cask is bumped by [a workflow](.github/workflows/update-cask.yml) that checks the latest Meraline release. Run it by hand from the Actions tab if a release is missing here.
