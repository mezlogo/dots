export PATH=$PATH:$HOME/bin

if [ ! -f ~/.zsh_plugins ]; then
    antibody bundle < ~/.zsh_bundles > ~/.zsh_plugins
fi

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi

if command -v tmux>/dev/null && [ -z $TMUX ] ; then
  exec tmux new-session -A -s default
fi

alias wrk='git -C ~/wrk'

# ===== Basics
setopt no_beep # don't beep on error
setopt interactive_comments # Allow comments even in interactive shells (especially for Muness)

# ===== Changing Directories
unsetopt auto_cd # If you type foo, and it isn't a command, and it is a directory in your cdpath, go there
setopt cdablevarS # if argument to cd is the name of a parameter whose value is a valid directory, it will become the current directory
setopt pushd_ignore_dups # don't push multiple copies of the same directory onto the directory stack

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

autoload -Uz compinit
compinit

export SSH_AUTH_SOCK=/tmp/ssh-agent.socket

export EDITOR=nvim
export VISUAL=nvim

export ZSH_AUTOSUGGEST_USE_ASYNC="true"
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

export PURE_GIT_PULL=0
export PURE_GIT_UNTRACKED_DIRTY=0
export PURE_CMD_MAX_EXEC_TIME=2

source ~/.zsh_plugins
source ~/wrk/wrk.zsh

HISTORY_IGNORE='jrnl *'
HISTFILE=$HOME/.zsh_history
HISTSIZE=20000
SAVEHIST=20000

setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY
export MAVEN_OPTS='-Xmx4G'

alias print_installed='comm -13 ~/.pkgs/ignore.pkgs <(pacman -Qeq | sort)'
alias print_declared='cat ~/.pkgs/declared.pkgs'
alias print_new='comm -23 <(print_declared) <(print_installed)'
alias print_deprecated='comm -23 <(print_installed) <(print_declared)'
alias export_pkgs='print_installed > ~/.pkgs/declared.pkgs'
alias remove_deprecated='pacaur -Rns $(print_deprecated)'
alias install_new='pacaur -S --needed --noedit $(print_new)'


alias ll='ls -al'
alias vim='nvim'
alias vi='nvim'

alias print_uniq_history="sort -r ~/.zsh_history_remote ~/.zsh_history | sort -k 2 -t ';' -u | sort"

