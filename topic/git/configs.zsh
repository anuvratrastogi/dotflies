#!/usr/bin/env zsh

# purge existing gitcert, if any
silrem "${HOME}/.gitcerts.pem"

# create gitcerts
fappend "${HOME}/.gitcerts.ca.pem" "$HOME/.gitcerts.pem"
fappend "${HOME}/.gitcerts.user.pem" "$HOME/.gitcerts.pem"