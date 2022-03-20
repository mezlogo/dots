_SOURCE_EXO="$HOME/exo/sourceit.sh"
[ -e "$_SOURCE_EXO" ] && source "$_SOURCE_EXO"

export SSH_AUTH_SOCK=/tmp/ssh-agent.socket

export EDITOR=nvim
export VISUAL=nvim

export BASH_ENV="~/.profile"

alias ll='ls -alF --color=always'
alias ls='ls -F --color=always'
alias vim='nvim'
alias vi='nvim'
alias cat="bat"

export npm_config_prefix="$HOME/.local"
export PATH="$HOME/bin:$HOME/exo/tools/bin:$HOME/.local/bin:$PATH"

export MAVEN_OPTS='-Xmx4G'

yadm_path=$HOME/.dots.git
exo_path=$HOME/exo
alias yadm='git --work-tree=$HOME --git-dir=$yadm_path'
repo_pathes="$HOME:$yadm_path $exo_path"

alias gst="mygit status $repo_pathes"
alias gimprt="mygit fetch $repo_pathes && mygit rebase $repo_pathes"
alias gexprt="mygit commit $repo_pathes && mygit push $repo_pathes"
alias idea="$HOME/tools/idea-IC-213.7172.25/bin/idea.sh"

