alias cat="bat"

export SSH_AUTH_SOCK=/tmp/ssh-agent.socket

export EDITOR=nvim
export VISUAL=nvim

alias ll='ls -alF --color=always'
alias ls='ls -F --color=always'
alias vim='nvim'
alias vi='nvim'

source "$HOME/wrk/source.zsh"

export PATH="$HOME/tools/apache-maven-3.6.3/bin:$HOME/wrk/bin:$HOME/bin:$PATH"

export MAVEN_OPTS='-Xmx4G'

wrk_path=~/wrk
alma_path=~/alma
yadm_path=~/.dots.git
exo_path=~/exo
alias yadm='git --work-tree=$HOME --git-dir=$yadm_path'
repo_pathes="$wrk_path $alma_path $HOME:$yadm_path $exo_path"

alias gst="mygit status $repo_pathes"
alias gimprt="mygit fetch $repo_pathes && mygit rebase $repo_pathes"
alias gexprt="mygit commit $repo_pathes && mygit push $repo_pathes"

alias prx="java -jar ~/alma/projects/prx/build/libs/prx.jar"
alias jmx="java -jar ~/alma/projects/jmxclient/build/libs/jmxclient.jar"
alias api="java -jar ~/wrk/projects/apiclient/build/libs/apiclient.jar"
alias cashout="java -jar ~/wrk/projects/cashoutclient/build/libs/cashoutclient.jar"
alias web="java -jar ~/wrk/projects/webclient/build/libs/webclient.jar"
alias app="java -jar ~/wrk/projects/appclient/build/libs/appclient.jar"
alias myamqp='java -jar ~/alma/projects/myamqp/build/libs/myamqp.jar'
alias pandecoder='java -jar ~/wrk/projects/pandecoder/build/libs/pandecoder.jar'
alias antlr4='java -cp ~/tools/antlr-4.9-complete.jar:. org.antlr.v4.Tool'
alias grun='java -cp ~/tools/antlr-4.9-complete.jar:. org.antlr.v4.gui.TestRig'
