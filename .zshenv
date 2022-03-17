_SOURCE_EXO="$HOME/exo/sourceit.sh"
[ -e "$_SOURCE_EXO" ] && source "$_SOURCE_EXO"

export SSH_AUTH_SOCK=/tmp/ssh-agent.socket
#[[ -e "$XDG_RUNTIME_DIR/docker.sock" ]] && export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock

export EDITOR=nvim
export VISUAL=nvim

export exo="$HOME/exo"
export tools="$HOME/tools"

alias antlr4='java -jar $HOME/tools/antlr-4.9.2-complete.jar'
alias grun='java -cp $HOME/tools/antlr-4.9.2-complete.jar org.antlr.v4.gui.TestRig'
alias solidityParser='java -jar $HOME/exo/study/solidity_lang_app/solidityParser/build/libs/solidityParser.jar'
alias neo4jImporter='node $exo/study/solidity_lang_app/neo4j_nodejs/index.js'

export CATALINA_HOME=$tools/apache-tomcat
alias tomcat1="CATALINA_BASE=$tools/tomcat1 $CATALINA_HOME/bin/catalina.sh"
alias tomcat_panbetweb="CATALINA_BASE=$exo/any/tomcat_panbetweb $CATALINA_HOME/bin/catalina.sh"
alias tomcat_ee_sandbox="CATALINA_BASE=$exo/any/ee_sanbox/tomcat_ee_sandbox $CATALINA_HOME/bin/catalina.sh"


export BASH_ENV="~/.profile"
export NODE_MODULE="$exo/modules/node"
export PYTHONPATH="$exo/modules/python"
export ASPECTJ="$HOME/tools/aspectj"

for f in $(find $exo/modules/shell -name '*.sh'); do source "$f"; done

alias dr='deno run -A --unstable --import-map=$exo/data/deno_import_map.json'
alias dt='deno test -A --unstable --import-map=$exo/data/deno_import_map.json'
alias ll='ls -alF --color=always'
alias ls='ls -F --color=always'
alias vim='nvim'
alias vi='nvim'
alias cat="bat"
alias jcpy="python $HOME/.local/lib/python3.9/site-packages/jc/cli.py"
alias newpan="inv -r $HOME/exo/modules/python -c pan_invoke"

export npm_config_prefix="$HOME/.local"
export PATH="$HOME/tools/apache-maven-3.6.3/bin:$HOME/bin:$exo/tools/bin:$HOME/.local/bin:$PATH"

export MAVEN_OPTS='-Xmx4G'

yadm_path=~/.dots.git
exo_path=~/exo
alias yadm='git --work-tree=$HOME --git-dir=$yadm_path'
repo_pathes="$HOME:$yadm_path $exo_path"

#alias docker-compose="docker compose --compatibility"

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
