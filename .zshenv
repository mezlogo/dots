export SSH_AUTH_SOCK=/tmp/ssh-agent.socket

export EDITOR=nvim
export VISUAL=nvim

export BASH_ENV="~/.profile"
export exo=$HOME/exo

_SOURCE_EXO="$exo/config/sourceit.sh"
[ -e "$_SOURCE_EXO" ] && source "$_SOURCE_EXO"

alias ll='ls -alF --color=always'
alias ls='ls -F --color=always'
alias vim='nvim'
alias vi='nvim'
alias cat="bat"

export PATH="$exo/projects/tools/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"

export MAVEN_OPTS='-Xmx4G'

yadm_path=$HOME/.dots.git
alias yadm='git --work-tree=$HOME --git-dir=$yadm_path'
repo_pathes="$HOME:$yadm_path $exo"

alias gst="mygit status $repo_pathes"
alias gimprt="mygit fetch $repo_pathes && mygit rebase $repo_pathes"
alias gexprt="mygit commit $repo_pathes && mygit push $repo_pathes"

alias idea="$HOME/tools/idea/bin/idea.sh"

export PANCLI_DEFAULT_PLATFORM="cur1testers"
