#!/usr/bin/env zsh

# -----
# zsh
# -----

zplugin light "zsh-users/zsh-completions"
zplugin light "zsh-users/zsh-autosuggestions"
zplugin light "zdharma/fast-syntax-highlighting"
zplugin light "zdharma/zsh-diff-so-fancy"

# -----
# alias-i-should-use
# -----

zplugin light "MichaelAquilina/zsh-you-should-use"

# -----
# autojump
# -----

zplugin snippet "OMZ::plugins/autojump/autojump.plugin.zsh"

# -----
# hhighlighter
# -----

zplugin ice pick"h.sh"
zplugin light "paoloantinori/hhighlighter"

# -----
# sudo
# -----

zplugin snippet "OMZ::plugins/sudo/sudo.plugin.zsh"
