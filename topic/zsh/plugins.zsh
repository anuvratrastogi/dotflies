#!/usr/bin/env zsh

# -----
# zsh
# -----

zplugin light "zsh-users/zsh-completions"

zplugin ice lucid wait"1" atload"_zsh_autosuggest_start"
zplugin load "zsh-users/zsh-autosuggestions"

zplugin ice lucid wait"5" atinit"ZPLGM[COMPINIT_OPTS]=-C; zpcompinit; zpcdreplay" lucid
zplugin light "zdharma/fast-syntax-highlighting"

zplugin light "zdharma/zsh-diff-so-fancy"

# -----
# async
# -----

zplugin ice atload'async_init'
zplugin light "mafredri/zsh-async"

# -----
# alias-i-should-use
# -----

zplugin ice lucid wait"!2"
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
