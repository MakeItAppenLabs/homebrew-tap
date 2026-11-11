# Make It Appen Homebrew tap

Homebrew casks for software from [Make It Appen](https://makeitappen.com).

## Asciiquarium

The classic ASCII-art aquarium as a macOS screen saver
([source and releases](https://github.com/MakeItAppenLabs/asciiquarium-saver)).

```sh
brew trust --cask makeitappenlabs/tap/asciiquarium-saver
brew install --cask makeitappenlabs/tap/asciiquarium-saver
```

The first line is needed once. Homebrew 7 won't load a cask from a third-party tap until you trust it,
and without it `brew upgrade` can't update the screen saver later. It trusts only this cask, not
everything in the tap.

Then open System Settings, choose Screen Saver, and select Asciiquarium (under Other).

To remove it: `brew uninstall --cask asciiquarium-saver`. Add `--zap` to delete its saved Options as well.

The cask is named `asciiquarium-saver` because `brew install asciiquarium` already installs Kirk
Baucom's original terminal version, which this screen saver is based on.

## Updates

A daily workflow checks for new GitHub releases and opens a pull request that bumps the cask.
