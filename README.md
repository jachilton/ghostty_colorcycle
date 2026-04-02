# Ghostty ColorCycle

Randomly applies a color theme each time you open a new Ghostty terminal tab or window. Your base Ghostty config (font, opacity, blur, padding, keybinds) stays untouched — only the colors change.

## How it works

The script is sourced from `.zshrc` and uses a `precmd` hook to apply colors via OSC escape sequences on the first prompt render. This makes it compatible with Powerlevel10k instant prompt — no warnings, no flicker.

Each session picks one theme at random from the pool below.

## Themes

<table>
<tr>
<td><strong>Catppuccin Mocha</strong></td>
<td bgcolor="#1e1e2e" width="30">&nbsp;</td>
<td bgcolor="#cdd6f4" width="30">&nbsp;</td>
<td bgcolor="#f5e0dc" width="20">&nbsp;</td>
<td bgcolor="#45475a" width="20">&nbsp;</td>
<td bgcolor="#f38ba8" width="20">&nbsp;</td>
<td bgcolor="#a6e3a1" width="20">&nbsp;</td>
<td bgcolor="#f9e2af" width="20">&nbsp;</td>
<td bgcolor="#89b4fa" width="20">&nbsp;</td>
<td bgcolor="#f5c2e7" width="20">&nbsp;</td>
<td bgcolor="#94e2d5" width="20">&nbsp;</td>
<td bgcolor="#a6adc8" width="20">&nbsp;</td>
<td bgcolor="#585b70" width="20">&nbsp;</td>
<td bgcolor="#f37799" width="20">&nbsp;</td>
<td bgcolor="#89d88b" width="20">&nbsp;</td>
<td bgcolor="#ebd391" width="20">&nbsp;</td>
<td bgcolor="#74a8fc" width="20">&nbsp;</td>
<td bgcolor="#f2aede" width="20">&nbsp;</td>
<td bgcolor="#6bd7ca" width="20">&nbsp;</td>
<td bgcolor="#bac2de" width="20">&nbsp;</td>
</tr>
<tr>
<td><strong>Ayu</strong></td>
<td bgcolor="#0b0e14" width="30">&nbsp;</td>
<td bgcolor="#bfbdb6" width="30">&nbsp;</td>
<td bgcolor="#e6b450" width="20">&nbsp;</td>
<td bgcolor="#11151c" width="20">&nbsp;</td>
<td bgcolor="#ea6c73" width="20">&nbsp;</td>
<td bgcolor="#7fd962" width="20">&nbsp;</td>
<td bgcolor="#f9af4f" width="20">&nbsp;</td>
<td bgcolor="#53bdfa" width="20">&nbsp;</td>
<td bgcolor="#cda1fa" width="20">&nbsp;</td>
<td bgcolor="#90e1c6" width="20">&nbsp;</td>
<td bgcolor="#c7c7c7" width="20">&nbsp;</td>
<td bgcolor="#686868" width="20">&nbsp;</td>
<td bgcolor="#f07178" width="20">&nbsp;</td>
<td bgcolor="#aad94c" width="20">&nbsp;</td>
<td bgcolor="#ffb454" width="20">&nbsp;</td>
<td bgcolor="#59c2ff" width="20">&nbsp;</td>
<td bgcolor="#d2a6ff" width="20">&nbsp;</td>
<td bgcolor="#95e6cb" width="20">&nbsp;</td>
<td bgcolor="#ffffff" width="20">&nbsp;</td>
</tr>
<tr>
<td><strong>Cobalt2</strong></td>
<td bgcolor="#132738" width="30">&nbsp;</td>
<td bgcolor="#ffffff" width="30">&nbsp;</td>
<td bgcolor="#f0cc09" width="20">&nbsp;</td>
<td bgcolor="#000000" width="20">&nbsp;</td>
<td bgcolor="#ff0000" width="20">&nbsp;</td>
<td bgcolor="#38de21" width="20">&nbsp;</td>
<td bgcolor="#ffe50a" width="20">&nbsp;</td>
<td bgcolor="#1460d2" width="20">&nbsp;</td>
<td bgcolor="#ff005d" width="20">&nbsp;</td>
<td bgcolor="#00bbbb" width="20">&nbsp;</td>
<td bgcolor="#bbbbbb" width="20">&nbsp;</td>
<td bgcolor="#555555" width="20">&nbsp;</td>
<td bgcolor="#f40e17" width="20">&nbsp;</td>
<td bgcolor="#3bd01d" width="20">&nbsp;</td>
<td bgcolor="#edc809" width="20">&nbsp;</td>
<td bgcolor="#5555ff" width="20">&nbsp;</td>
<td bgcolor="#ff55ff" width="20">&nbsp;</td>
<td bgcolor="#6ae3fa" width="20">&nbsp;</td>
<td bgcolor="#ffffff" width="20">&nbsp;</td>
</tr>
<tr>
<td><strong>Everforest Dark Hard</strong></td>
<td bgcolor="#1e2326" width="30">&nbsp;</td>
<td bgcolor="#d3c6aa" width="30">&nbsp;</td>
<td bgcolor="#e69875" width="20">&nbsp;</td>
<td bgcolor="#7a8478" width="20">&nbsp;</td>
<td bgcolor="#e67e80" width="20">&nbsp;</td>
<td bgcolor="#a7c080" width="20">&nbsp;</td>
<td bgcolor="#dbbc7f" width="20">&nbsp;</td>
<td bgcolor="#7fbbb3" width="20">&nbsp;</td>
<td bgcolor="#d699b6" width="20">&nbsp;</td>
<td bgcolor="#83c092" width="20">&nbsp;</td>
<td bgcolor="#f2efdf" width="20">&nbsp;</td>
<td bgcolor="#a6b0a0" width="20">&nbsp;</td>
<td bgcolor="#f85552" width="20">&nbsp;</td>
<td bgcolor="#8da101" width="20">&nbsp;</td>
<td bgcolor="#dfa000" width="20">&nbsp;</td>
<td bgcolor="#3a94c5" width="20">&nbsp;</td>
<td bgcolor="#df69ba" width="20">&nbsp;</td>
<td bgcolor="#35a77c" width="20">&nbsp;</td>
<td bgcolor="#fffbef" width="20">&nbsp;</td>
</tr>
<tr>
<td><strong>Shades Of Purple</strong></td>
<td bgcolor="#1e1d40" width="30">&nbsp;</td>
<td bgcolor="#ffffff" width="30">&nbsp;</td>
<td bgcolor="#fad000" width="20">&nbsp;</td>
<td bgcolor="#000000" width="20">&nbsp;</td>
<td bgcolor="#d90429" width="20">&nbsp;</td>
<td bgcolor="#3ad900" width="20">&nbsp;</td>
<td bgcolor="#ffe700" width="20">&nbsp;</td>
<td bgcolor="#6943ff" width="20">&nbsp;</td>
<td bgcolor="#ff2c70" width="20">&nbsp;</td>
<td bgcolor="#00c5c7" width="20">&nbsp;</td>
<td bgcolor="#c7c7c7" width="20">&nbsp;</td>
<td bgcolor="#686868" width="20">&nbsp;</td>
<td bgcolor="#f92a1c" width="20">&nbsp;</td>
<td bgcolor="#43d426" width="20">&nbsp;</td>
<td bgcolor="#f1d000" width="20">&nbsp;</td>
<td bgcolor="#6871ff" width="20">&nbsp;</td>
<td bgcolor="#ff77ff" width="20">&nbsp;</td>
<td bgcolor="#79e8fb" width="20">&nbsp;</td>
<td bgcolor="#ffffff" width="20">&nbsp;</td>
</tr>
<tr>
<td><strong>Powershell</strong></td>
<td bgcolor="#052454" width="30">&nbsp;</td>
<td bgcolor="#f6f6f7" width="30">&nbsp;</td>
<td bgcolor="#f6f6f7" width="20">&nbsp;</td>
<td bgcolor="#000000" width="20">&nbsp;</td>
<td bgcolor="#981a22" width="20">&nbsp;</td>
<td bgcolor="#098003" width="20">&nbsp;</td>
<td bgcolor="#c4a000" width="20">&nbsp;</td>
<td bgcolor="#4140c3" width="20">&nbsp;</td>
<td bgcolor="#d33682" width="20">&nbsp;</td>
<td bgcolor="#0e807f" width="20">&nbsp;</td>
<td bgcolor="#7f7c7f" width="20">&nbsp;</td>
<td bgcolor="#808080" width="20">&nbsp;</td>
<td bgcolor="#ef2929" width="20">&nbsp;</td>
<td bgcolor="#1cfe3c" width="20">&nbsp;</td>
<td bgcolor="#fefe45" width="20">&nbsp;</td>
<td bgcolor="#268ad2" width="20">&nbsp;</td>
<td bgcolor="#fe13fa" width="20">&nbsp;</td>
<td bgcolor="#29fffe" width="20">&nbsp;</td>
<td bgcolor="#c2c1c3" width="20">&nbsp;</td>
</tr>
<tr>
<td><strong>branch</strong></td>
<td bgcolor="#32221a" width="30">&nbsp;</td>
<td bgcolor="#cfc1a9" width="30">&nbsp;</td>
<td bgcolor="#cfc1a9" width="20">&nbsp;</td>
<td bgcolor="#35241c" width="20">&nbsp;</td>
<td bgcolor="#c2562d" width="20">&nbsp;</td>
<td bgcolor="#96a65e" width="20">&nbsp;</td>
<td bgcolor="#d29b5a" width="20">&nbsp;</td>
<td bgcolor="#3b8e8c" width="20">&nbsp;</td>
<td bgcolor="#c47e5b" width="20">&nbsp;</td>
<td bgcolor="#639a90" width="20">&nbsp;</td>
<td bgcolor="#cfc1a9" width="20">&nbsp;</td>
<td bgcolor="#564a45" width="20">&nbsp;</td>
<td bgcolor="#c2562d" width="20">&nbsp;</td>
<td bgcolor="#96a65e" width="20">&nbsp;</td>
<td bgcolor="#d29b5a" width="20">&nbsp;</td>
<td bgcolor="#3b8e8c" width="20">&nbsp;</td>
<td bgcolor="#c47e5b" width="20">&nbsp;</td>
<td bgcolor="#639a90" width="20">&nbsp;</td>
<td bgcolor="#cfc1a9" width="20">&nbsp;</td>
</tr>
<tr>
<td><strong>Red Sands</strong></td>
<td bgcolor="#7a251e" width="30">&nbsp;</td>
<td bgcolor="#d7c9a7" width="30">&nbsp;</td>
<td bgcolor="#ffffff" width="20">&nbsp;</td>
<td bgcolor="#000000" width="20">&nbsp;</td>
<td bgcolor="#ff3f00" width="20">&nbsp;</td>
<td bgcolor="#00bb00" width="20">&nbsp;</td>
<td bgcolor="#e7b000" width="20">&nbsp;</td>
<td bgcolor="#0072ff" width="20">&nbsp;</td>
<td bgcolor="#bb00bb" width="20">&nbsp;</td>
<td bgcolor="#00bbbb" width="20">&nbsp;</td>
<td bgcolor="#bbbbbb" width="20">&nbsp;</td>
<td bgcolor="#6e6e6e" width="20">&nbsp;</td>
<td bgcolor="#d41a1a" width="20">&nbsp;</td>
<td bgcolor="#00bb00" width="20">&nbsp;</td>
<td bgcolor="#e7b000" width="20">&nbsp;</td>
<td bgcolor="#0072ae" width="20">&nbsp;</td>
<td bgcolor="#ff55ff" width="20">&nbsp;</td>
<td bgcolor="#55ffff" width="20">&nbsp;</td>
<td bgcolor="#ffffff" width="20">&nbsp;</td>
</tr>
<tr>
<td><strong>Mona Lisa</strong></td>
<td bgcolor="#120b0d" width="30">&nbsp;</td>
<td bgcolor="#f7d66a" width="30">&nbsp;</td>
<td bgcolor="#c46c32" width="20">&nbsp;</td>
<td bgcolor="#351b0e" width="20">&nbsp;</td>
<td bgcolor="#9b291c" width="20">&nbsp;</td>
<td bgcolor="#636232" width="20">&nbsp;</td>
<td bgcolor="#c36e28" width="20">&nbsp;</td>
<td bgcolor="#515c5d" width="20">&nbsp;</td>
<td bgcolor="#9b1d29" width="20">&nbsp;</td>
<td bgcolor="#588056" width="20">&nbsp;</td>
<td bgcolor="#f7d75c" width="20">&nbsp;</td>
<td bgcolor="#874228" width="20">&nbsp;</td>
<td bgcolor="#ff4331" width="20">&nbsp;</td>
<td bgcolor="#b4b264" width="20">&nbsp;</td>
<td bgcolor="#ff9566" width="20">&nbsp;</td>
<td bgcolor="#9eb2b4" width="20">&nbsp;</td>
<td bgcolor="#ff5b6a" width="20">&nbsp;</td>
<td bgcolor="#8acd8f" width="20">&nbsp;</td>
<td bgcolor="#ffe598" width="20">&nbsp;</td>
</tr>
<tr>
<td><strong>Medallion</strong></td>
<td bgcolor="#1d1908" width="30">&nbsp;</td>
<td bgcolor="#cac296" width="30">&nbsp;</td>
<td bgcolor="#d3ba30" width="20">&nbsp;</td>
<td bgcolor="#000000" width="20">&nbsp;</td>
<td bgcolor="#b64c00" width="20">&nbsp;</td>
<td bgcolor="#7c8b16" width="20">&nbsp;</td>
<td bgcolor="#d3bd26" width="20">&nbsp;</td>
<td bgcolor="#616bb0" width="20">&nbsp;</td>
<td bgcolor="#8c5a90" width="20">&nbsp;</td>
<td bgcolor="#916c25" width="20">&nbsp;</td>
<td bgcolor="#cac29a" width="20">&nbsp;</td>
<td bgcolor="#5e5219" width="20">&nbsp;</td>
<td bgcolor="#ff9149" width="20">&nbsp;</td>
<td bgcolor="#b2ca3b" width="20">&nbsp;</td>
<td bgcolor="#ffe54a" width="20">&nbsp;</td>
<td bgcolor="#acb8ff" width="20">&nbsp;</td>
<td bgcolor="#ffa0ff" width="20">&nbsp;</td>
<td bgcolor="#ffbc51" width="20">&nbsp;</td>
<td bgcolor="#fed698" width="20">&nbsp;</td>
</tr>
<tr>
<td><strong>Matrix</strong></td>
<td bgcolor="#0f191c" width="30">&nbsp;</td>
<td bgcolor="#426644" width="30">&nbsp;</td>
<td bgcolor="#384545" width="20">&nbsp;</td>
<td bgcolor="#0f191c" width="20">&nbsp;</td>
<td bgcolor="#23755a" width="20">&nbsp;</td>
<td bgcolor="#82d967" width="20">&nbsp;</td>
<td bgcolor="#ffd700" width="20">&nbsp;</td>
<td bgcolor="#3f5242" width="20">&nbsp;</td>
<td bgcolor="#409931" width="20">&nbsp;</td>
<td bgcolor="#50b45a" width="20">&nbsp;</td>
<td bgcolor="#507350" width="20">&nbsp;</td>
<td bgcolor="#688060" width="20">&nbsp;</td>
<td bgcolor="#2fc079" width="20">&nbsp;</td>
<td bgcolor="#90d762" width="20">&nbsp;</td>
<td bgcolor="#faff00" width="20">&nbsp;</td>
<td bgcolor="#4f7e7e" width="20">&nbsp;</td>
<td bgcolor="#11ff25" width="20">&nbsp;</td>
<td bgcolor="#c1ff8a" width="20">&nbsp;</td>
<td bgcolor="#678c61" width="20">&nbsp;</td>
</tr>
<tr>
<td><strong>Fun Forrest</strong></td>
<td bgcolor="#251200" width="30">&nbsp;</td>
<td bgcolor="#dec165" width="30">&nbsp;</td>
<td bgcolor="#e5591c" width="20">&nbsp;</td>
<td bgcolor="#000000" width="20">&nbsp;</td>
<td bgcolor="#d6262b" width="20">&nbsp;</td>
<td bgcolor="#919c00" width="20">&nbsp;</td>
<td bgcolor="#be8a13" width="20">&nbsp;</td>
<td bgcolor="#4699a3" width="20">&nbsp;</td>
<td bgcolor="#8d4331" width="20">&nbsp;</td>
<td bgcolor="#da8213" width="20">&nbsp;</td>
<td bgcolor="#ddc265" width="20">&nbsp;</td>
<td bgcolor="#7f6a55" width="20">&nbsp;</td>
<td bgcolor="#e55a1c" width="20">&nbsp;</td>
<td bgcolor="#bfc65a" width="20">&nbsp;</td>
<td bgcolor="#ffcb1b" width="20">&nbsp;</td>
<td bgcolor="#7cc9cf" width="20">&nbsp;</td>
<td bgcolor="#d26349" width="20">&nbsp;</td>
<td bgcolor="#e6a96b" width="20">&nbsp;</td>
<td bgcolor="#ffeaa3" width="20">&nbsp;</td>
</tr>
</table>

> Columns: **BG** | **FG** | **Cursor** | Palette 0-15

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
