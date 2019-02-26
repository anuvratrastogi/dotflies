#!/usr/bin/env zsh

exists kubectl && {
    __KUBECTL_COMPLETION_FILE="$ZPLGM[COMPLETIONS_DIR]/_kubectl_completion"

    if [[ ! -f $__KUBECTL_COMPLETION_FILE ]]; then
        kubectl completion zsh >! $__KUBECTL_COMPLETION_FILE
    fi

    [[ -f $__KUBECTL_COMPLETION_FILE ]] && source $__KUBECTL_COMPLETION_FILE

    unset __KUBECTL_COMPLETION_FILE
}
