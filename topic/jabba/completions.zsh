#!/usr/bin/env zsh

exists jabba && {
  JABBA_HOME="$HOME/.jabba"
  if ! typeset -f jabba &>/dev/null; then
    export JABBA_BIN=$(which jabba)
  fi

  jabba() {
    local fd3=$(mktemp /tmp/jabba-fd3.XXXXXX)
    (JABBA_SHELL_INTEGRATION=ON $JABBA_BIN "$@" 3>| ${fd3})
    local exit_code=$?
    eval $(cat ${fd3})
    rm -f ${fd3}
    return ${exit_code}
  }

  if [ ! -z "$(jabba alias default)" ]; then
    if [ ! -z "$(jabba current)" ]; then
      jabba use default
    fi
  fi
}