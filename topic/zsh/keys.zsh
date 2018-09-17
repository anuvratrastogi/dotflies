#!/usr/bin/env zsh

# Use emacs key bindings
bindkey -e

# [Ctrl-RightArrow] - move forward one word
bindkey '^[[1;5C' forward-word
# [Ctrl-LeftArrow] - move backward one word
bindkey '^[[1;5D' backward-word

bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line

# [Shift-Tab] - move through the completion menu backwards
if [[ ! -z "$terminfo[kcbt]" ]]; then
  bindkey "$terminfo[kcbt]" reverse-menu-complete
fi
# [Backspace] - delete backward
bindkey '^?' backward-delete-char
# [Delete] - delete forward
if [[ ! -z "$terminfo[kdch1]" ]]; then
  bindkey "$terminfo[kdch1]" delete-char
else
  bindkey "^[[3~" delete-char
  bindkey "^[3;5~" delete-char
  bindkey "\e[3~" delete-char
fi

# fzf
zplugin snippet "https://github.com/junegunn/fzf/blob/master/shell/completion.zsh"
zplugin snippet "https://github.com/junegunn/fzf/blob/master/shell/key-bindings.zsh"