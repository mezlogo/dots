export SSH_AUTH_SOCK=/tmp/ssh-agent.socket

export EDITOR=nvim
export VISUAL=nvim

export exo="$HOME/exo"

export BASH_ENV="~/.profile"
export NODE_MODULE="$exo/modules/node"
export PYTHONPATH="$exo/modules/python"

for f in $(find $exo/modules/shell -name '*.sh'); do source "$f"; done

alias ll='ls -alF --color=always'
alias ls='ls -F --color=always'
alias vim='nvim'
alias vi='nvim'
alias cat="bat"
alias jcpy="python $HOME/.local/lib/python3.9/site-packages/jc/cli.py"

export PATH="$HOME/tools/apache-maven-3.6.3/bin:$HOME/bin:$exo/tools/bin:$PATH"

export MAVEN_OPTS='-Xmx4G'

yadm_path=~/.dots.git
exo_path=~/exo
alias yadm='git --work-tree=$HOME --git-dir=$yadm_path'
repo_pathes="$HOME:$yadm_path $exo_path"

alias gst="mygit status $repo_pathes"
alias gimprt="mygit fetch $repo_pathes && mygit rebase $repo_pathes"
alias gexprt="mygit commit $repo_pathes && mygit push $repo_pathes"

alias prx="java -jar ~/exo/tools/prx/build/libs/prx.jar"
alias jmx="java -jar ~/exo/tools/jmxclient/build/libs/jmxclient.jar"
alias api="java -jar ~/exo/tools/apiclient/build/libs/apiclient.jar"
alias cashout="java -jar ~/exo/tools/cashoutclient/build/libs/cashoutclient.jar"
alias web="java -jar ~/exo/tools/webclient/build/libs/webclient.jar"
alias app="java -jar ~/exo/tools/appclient/build/libs/appclient.jar"
alias myamqp='java -jar ~/exo/tools/myamqp/build/libs/myamqp.jar'
alias pandecoder='java -jar ~/exo/tools/pandecoder/build/libs/pandecoder.jar'
