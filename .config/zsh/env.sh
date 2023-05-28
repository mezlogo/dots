export SSH_AUTH_SOCK=/tmp/ssh-agent.socket

export EDITOR=nvim
export VISUAL=nvim

export BASH_ENV="$HOME/.profile"

export EXO="$HOME/exo" 

load_ext() {
    local exo_env="$EXO/config/shell/sourceit.sh"
    [ -e "$exo_env" ] && source "$exo_env"
}

load_ext

alias ll='ls -alF --color=always'
alias ls='ls -F --color=always'
alias vim='nvim'
alias vi='nvim'
alias cat="bat"

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
