#!/bin/zsh

alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

# Alias tmux to our wrapper function.
alias tmux=_zsh_tmux_plugin_run
