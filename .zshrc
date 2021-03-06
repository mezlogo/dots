if [ ! -f ~/.zsh_plugins ]; then
    antibody bundle < ~/.zsh_bundles > ~/.zsh_plugins
fi

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]];
    then exec startx;
fi

alias -g L='| less'
alias -g W='| wc -l'
alias -g S='| sort | uniq -c | sort -nr'
alias -g X='| xsel -b'
alias -g R='| rg -F'

unsetopt auto_cd
setopt globdots
setopt prompt_subst
autoload -Uz compinit && compinit

# ===== Completion
setopt always_to_end # When completing from the middle of a word, move the cursor to the end of the word
setopt auto_menu # show completion menu on successive tab press. needs unsetop menu_complete to work
setopt auto_name_dirs # any parameter that is set to the absolute name of a directory immediately becomes a name for that directory
setopt complete_in_word # Allow completion from within a word/phrase

unsetopt menu_complete # do not autoselect the first completion entry

export ZSH_AUTOSUGGEST_USE_ASYNC="true"
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

source ~/.zsh_plugins

#===HISTORY_BLOCK===
#turn off ksh-like !!
unsetopt bang_hist
#turn off modifiers like `print /usr/bin/cat(:t)`
unsetopt bare_glob_qual

setopt inc_append_history
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_find_no_dups
setopt hist_reduce_blanks
setopt hist_ignore_space
unsetopt hist_save_by_copy
unsetopt append_history

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

#===PROMPT_BLOCK===

bindkey -v
export KEYTIMEOUT=1

bindkey -M viins '^P' history-substring-search-up
bindkey -M viins '^N' history-substring-search-down
bindkey -M viins '^E' end-of-line
bindkey -M viins '^A' beginning-of-line
bindkey -M viins '^[.' insert-last-word
bindkey -M viins '^Q' vi-backward-word
bindkey -M viins '^F' vi-forward-word

precmd() {
  GIT_BRANCH=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
}

function zle-line-init zle-keymap-select {
  PROMPT="%F{yello}$GIT_BRANCH%F{blue}%~"$'\n'"%(?.%F{green}.%F{red})%B${${KEYMAP/vicmd/N}/(main|viins)/I}>%b%f "
  zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

stty -ixon -ixoff

copy-to-xsel() {
  zle kill-buffer
  print -rn -- $CUTBUFFER | xsel -ib
}; zle -N copy-to-xsel
bindkey -M viins "^Y" copy-to-xsel
bindkey -M viins "^J" jq-complete

