#!/bin/zsh
autoload add-zsh-hook

function detectProxy() {
    local PROMPT_PROXY_HINT
    if [ -n "$http_proxy" ] || [ -n "$https_proxy" ]; then
        PROMPT_PROXY_HINT="PROXY"
    else
        PROMPT_PROXY_HINT=""
    fi

    psvar=($PROMPT_PROXY_HINT)
}

add-zsh-hook precmd detectProxy

