#!/usr/bin/env

function load_plugins() {
  local _antifote_path="/usr/share/zsh-antidote/antidote.zsh"
  if [ -f "$_antifote_path" ]; then
    # source "$_antifote_path"
    # antidote load "$ZDOTDIR/zsh_plugins.txt"
    local zsh_plugins="$ZDOTDIR/zsh_plugins"
    if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
      (
        source "$_antifote_path"
        antidote bundle <${zsh_plugins}.txt >${zsh_plugins}.zsh
      )
    fi
    source ${zsh_plugins}.zsh
  fi
}

export ZSH_AUTOSUGGEST_USE_ASYNC="true"
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
load_plugins
