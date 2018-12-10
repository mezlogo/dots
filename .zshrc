export PATH=$PATH:$HOME/bin

if [ ! -f ~/.zsh_plugins ]; then
    antibody bundle < ~/.zsh_bundles > ~/.zsh_plugins
fi

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi

if command -v tmux>/dev/null && [ -z $TMUX ] ; then
  exec tmux new-session -A -s default
fi

alias wrk='git -C ~/wrk'

unsetopt auto_cd

# ===== Completion
setopt always_to_end # When completing from the middle of a word, move the cursor to the end of the word
setopt auto_menu # show completion menu on successive tab press. needs unsetop menu_complete to work
setopt auto_name_dirs # any parameter that is set to the absolute name of a directory immediately becomes a name for that directory
setopt complete_in_word # Allow completion from within a word/phrase

unsetopt menu_complete # do not autoselect the first completion entry

# ===== Prompt
setopt prompt_subst # Enable parameter expansion, command substitution, and arithmetic expansion in the prompt
setopt transient_rprompt # only show the rprompt on the current prompt

bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down
bindkey -e

export SSH_AUTH_SOCK=/tmp/ssh-agent.socket

export EDITOR=nvim
export VISUAL=nvim

export ZSH_AUTOSUGGEST_USE_ASYNC="true"
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

source ~/.zsh_plugins
source ~/wrk/wrk.zsh

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
HISTFILE=$HOME/.zsh_history

autoload -Uz compinit && compinit
autoload -Uz vcs_info
zstyle ':vcs_info:git*' formats "%b"
precmd() { vcs_info }

PROMPT='%(?.%F{blue}.%F{red})%B%#%f%b '
RPROMPT='%F{yello}%B%~ %F{white}${vcs_info_msg_0_}%b%f'
setopt prompt_subst

#export REPORTTIME=0
#
export MAVEN_OPTS='-Xmx4G'

alias ll='ls -al'
alias vim='nvim'
alias vi='nvim'

