#!/usr/bin/env zsh

# purge existing gitcert, if any
silrem "${HOME}/.gitcerts.ca.pem"

# create gitcerts
fappend "${HOME}/.gitcerts.ca.pem" "$HOME/.gitcerts.ca.pem"
fappend "${HOME}/.gitcerts.user.pem" "$HOME/.gitcerts.ca.pem"