# Ghostty ColorCycle

Randomly applies a color theme each time you open a new Ghostty terminal tab or window. Your base Ghostty config (font, opacity, blur, padding, keybinds) stays untouched — only the colors change.

## How it works

The script is sourced from `.zshrc` and uses a `precmd` hook to apply colors via OSC escape sequences on the first prompt render. This makes it compatible with Powerlevel10k instant prompt — no warnings, no flicker.

Each session picks one theme at random from the pool below.

## Themes

> Swatches show: **BG** | **FG** | **Cursor** | Palette 0–15

**Catppuccin Mocha**
<img src="swatches/catppuccin-mocha.svg" alt="Catppuccin Mocha" />

**Ayu**
<img src="swatches/ayu.svg" alt="Ayu" />

**Cobalt2**
<img src="swatches/cobalt2.svg" alt="Cobalt2" />

**Everforest Dark Hard**
<img src="swatches/everforest-dark-hard.svg" alt="Everforest Dark Hard" />

**Shades Of Purple**
<img src="swatches/shades-of-purple.svg" alt="Shades Of Purple" />

**Powershell**
<img src="swatches/powershell.svg" alt="Powershell" />

**branch**
<img src="swatches/branch.svg" alt="branch" />

**Red Sands**
<img src="swatches/red-sands.svg" alt="Red Sands" />

**Mona Lisa**
<img src="swatches/mona-lisa.svg" alt="Mona Lisa" />

**Medallion**
<img src="swatches/medallion.svg" alt="Medallion" />

**Matrix**
<img src="swatches/matrix.svg" alt="Matrix" />

**Fun Forrest**
<img src="swatches/fun-forrest.svg" alt="Fun Forrest" />

## Installation

1. Copy the script somewhere convenient:

```bash
cp random-theme.zsh ~/.config/ghostty/random-theme.zsh
```

2. Source it from your `.zshrc`:

```bash
# Randomize Ghostty color theme per terminal session
source ~/.config/ghostty/random-theme.zsh
```

3. Open a new tab. Each one gets a random theme from the pool.

## Usage

Check which theme is active in any session:

```bash
echo $GHOSTTY_RANDOM_THEME
```

## Customizing

Edit the `_ghostty_themes` array in `random-theme.zsh` to add or remove themes. Each entry is pipe-delimited:

```
"Name|foreground|background|cursor|palette0|palette1|...|palette15"
```

You can grab colors from any Ghostty theme file at:

```
/Applications/Ghostty.app/Contents/Resources/ghostty/themes/
```

## Compatibility

- Requires [Ghostty](https://ghostty.org) terminal
- Works with [Powerlevel10k](https://github.com/romkatv/powerlevel10k) instant prompt (uses deferred `precmd` hook)
- zsh only (uses zsh-specific array syntax)
