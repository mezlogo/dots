export SSH_AUTH_SOCK=/tmp/ssh-agent.socket

export EDITOR=nvim
export VISUAL=nvim

export BASH_ENV="$HOME/.profile"

export EXO="$HOME/exo" 

load_ext() {
    local exo_env="$EXO/config/shell/sourceit.sh"
    [ -e "$exo_env" ] && source "$exo_env"

    local helpers_dir="$HOME/repos/helpers"
    if [ -d "$helpers_dir" ]; then
        alias archsync="$helpers_dir/archsync/archsync"
    fi

    local overrides="$ZDOTDIR/override.sh"
    [ -e "$overrides" ] && source "$overrides"
}

load_ext

alias ll='ls -alF --color=always'
alias ls='ls -F --color=always'

if command -v nvim &> /dev/null ; then
    alias vim='nvim'
    alias vi='nvim'
fi

if command -v bat &> /dev/null ; then
    alias cat="bat"
fi

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"

export MAVEN_OPTS='-Xmx4G'

yadm_path=$HOME/.dots.git
alias yadm='git --work-tree=$HOME --git-dir=$yadm_path'
repo_pathes="$HOME:$yadm_path $EXO"

alias gst="mygit status $repo_pathes"
alias gimprt="mygit fetch $repo_pathes && mygit rebase $repo_pathes"
alias gexprt="mygit commit $repo_pathes && mygit push $repo_pathes"

alias idea="$HOME/tools/idea/bin/idea.sh"

alias pip='python -m pip'
