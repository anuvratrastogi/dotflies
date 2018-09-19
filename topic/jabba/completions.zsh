#!/usr/bin/env zsh

exists jabba && {
  JABBA_HOME="$HOME/.jabba"

  jenv() {
    local fd3=$(mktemp /tmp/jabba-fd3.XXXXXX)
    (JABBA_SHELL_INTEGRATION=ON $(which jabba) "$@" 3>| ${fd3})
    local exit_code=$?
    eval $(cat ${fd3})
    rm -f ${fd3}
    return ${exit_code}
  }

  if [ ! -z "$(jabba alias default)" ]; then
    jabba use default
  fi
}