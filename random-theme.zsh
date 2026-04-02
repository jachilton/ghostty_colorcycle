# Ghostty random theme - apply a random color scheme per terminal session
# Source this from .zshrc

# Only run inside Ghostty
[[ "$TERM_PROGRAM" == "ghostty" ]] || return 0

# Themes: name|fg|bg|cursor|palette0..palette15
_ghostty_themes=(
  "Catppuccin Mocha|#cdd6f4|#1e1e2e|#f5e0dc|#45475a|#f38ba8|#a6e3a1|#f9e2af|#89b4fa|#f5c2e7|#94e2d5|#a6adc8|#585b70|#f37799|#89d88b|#ebd391|#74a8fc|#f2aede|#6bd7ca|#bac2de"
  "Ayu|#bfbdb6|#0b0e14|#e6b450|#11151c|#ea6c73|#7fd962|#f9af4f|#53bdfa|#cda1fa|#90e1c6|#c7c7c7|#686868|#f07178|#aad94c|#ffb454|#59c2ff|#d2a6ff|#95e6cb|#ffffff"
  "Cobalt2|#ffffff|#132738|#f0cc09|#000000|#ff0000|#38de21|#ffe50a|#1460d2|#ff005d|#00bbbb|#bbbbbb|#555555|#f40e17|#3bd01d|#edc809|#5555ff|#ff55ff|#6ae3fa|#ffffff"
  "Everforest Dark Hard|#d3c6aa|#1e2326|#e69875|#7a8478|#e67e80|#a7c080|#dbbc7f|#7fbbb3|#d699b6|#83c092|#f2efdf|#a6b0a0|#f85552|#8da101|#dfa000|#3a94c5|#df69ba|#35a77c|#fffbef"
  "Shades Of Purple|#ffffff|#1e1d40|#fad000|#000000|#d90429|#3ad900|#ffe700|#6943ff|#ff2c70|#00c5c7|#c7c7c7|#686868|#f92a1c|#43d426|#f1d000|#6871ff|#ff77ff|#79e8fb|#ffffff"
  "Powershell|#f6f6f7|#052454|#f6f6f7|#000000|#981a22|#098003|#c4a000|#4140c3|#d33682|#0e807f|#7f7c7f|#808080|#ef2929|#1cfe3c|#fefe45|#268ad2|#fe13fa|#29fffe|#c2c1c3"
  "branch|#cfc1a9|#32221a|#cfc1a9|#35241c|#c2562d|#96a65e|#d29b5a|#3b8e8c|#c47e5b|#639a90|#cfc1a9|#564a45|#c2562d|#96a65e|#d29b5a|#3b8e8c|#c47e5b|#639a90|#cfc1a9"
  "Red Sands|#d7c9a7|#7a251e|#ffffff|#000000|#ff3f00|#00bb00|#e7b000|#0072ff|#bb00bb|#00bbbb|#bbbbbb|#6e6e6e|#d41a1a|#00bb00|#e7b000|#0072ae|#ff55ff|#55ffff|#ffffff"
  "Mona Lisa|#f7d66a|#120b0d|#c46c32|#351b0e|#9b291c|#636232|#c36e28|#515c5d|#9b1d29|#588056|#f7d75c|#874228|#ff4331|#b4b264|#ff9566|#9eb2b4|#ff5b6a|#8acd8f|#ffe598"
  "Medallion|#cac296|#1d1908|#d3ba30|#000000|#b64c00|#7c8b16|#d3bd26|#616bb0|#8c5a90|#916c25|#cac29a|#5e5219|#ff9149|#b2ca3b|#ffe54a|#acb8ff|#ffa0ff|#ffbc51|#fed698"
  "Matrix|#426644|#0f191c|#384545|#0f191c|#23755a|#82d967|#ffd700|#3f5242|#409931|#50b45a|#507350|#688060|#2fc079|#90d762|#faff00|#4f7e7e|#11ff25|#c1ff8a|#678c61"
  "Fun Forrest|#dec165|#251200|#e5591c|#000000|#d6262b|#919c00|#be8a13|#4699a3|#8d4331|#da8213|#ddc265|#7f6a55|#e55a1c|#bfc65a|#ffcb1b|#7cc9cf|#d26349|#e6a96b|#ffeaa3"
)

# Pick a random theme now, but defer applying it until after p10k is done
_ghostty_idx=$(( RANDOM % ${#_ghostty_themes[@]} + 1 ))
_ghostty_selected="${_ghostty_themes[$_ghostty_idx]}"

_ghostty_apply_random_theme() {
  # Only run once, then remove self from precmd
  precmd_functions=(${precmd_functions:#_ghostty_apply_random_theme})

  local parts=("${(@s:|:)_ghostty_selected}")

  local theme_name="${parts[1]}"
  local theme_fg="${parts[2]}"
  local theme_bg="${parts[3]}"
  local theme_cursor="${parts[4]}"

  # Apply colors via OSC escape sequences
  printf '\e]10;%s\a' "$theme_fg"      # foreground
  printf '\e]11;%s\a' "$theme_bg"      # background
  printf '\e]12;%s\a' "$theme_cursor"  # cursor

  # Set ANSI palette colors 0-15
  for i in {0..15}; do
    printf '\e]4;%d;%s\a' "$i" "${parts[$((i + 5))]}"
  done

  export GHOSTTY_RANDOM_THEME="$theme_name"

  # Clean up
  unset _ghostty_themes _ghostty_idx _ghostty_selected
}

# Register to run on first prompt (after p10k is fully initialized)
precmd_functions+=(_ghostty_apply_random_theme)
