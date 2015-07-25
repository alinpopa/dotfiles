ulimit -n 8192
# Zsh custom folder completions
fpath=(~/zsh_completions $fpath)
fpath=(/usr/local/share/zsh/site-functions $fpath)

autoload -U colors compinit && colors
compinit

PROMPT="%{$fg[green]%}%c %{$reset_color%}%% "

# History stuff
HISTSIZE=10000
HISTFILE=~/.history
SAVEHIST=500
#setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY

function tab_title () {
  if [ -z $1 ]; then
    echo -ne "\e]1; \a"
  else
    echo -ne "\e]1;${1}\a"
  fi
}

function pip_upgrade_all () {
  pip freeze --local | cut -d = -f 1  | xargs pip install -U
}

precmd () {print -Pn "\e]2; %~/ \a"}
preexec () {print -Pn "\e]2; %~/ \a"}

export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
export CVS_RSH=/usr/bin/ssh
export GIT_SSH=/usr/bin/ssh
export SVN_SSH=/usr/bin/ssh
# mercurial/python related variables
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
###

# jruby
export JRUBY_HOME=~/apps/jruby
###

# Apache Ant
export ANT_HOME=~/apps/ant
export ANT_OPTS="-Xmx512m"
###

export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=512M -Xms512m -Xmx1g"
#export _JAVA_OPTIONS=$SBT_OPTS

export SVN_EDITOR=vim
export HOME_BIN=${HOME}/bin
export SCALA_HOME=/Users/alin/apps/scala
export NODE_HOME=/Users/alin/usr/local/node
export RIAK_BIN_DIR="/Users/alin/apps/riak/bin"
export SML_HOME="/usr/local/Cellar/smlnj/110.75/libexec/bin"

export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
export CVS_RSH=/usr/bin/ssh
export GIT_SSH=/usr/bin/ssh
export SVN_SSH=/usr/bin/ssh

export M2_REPO="/Users/alin/.m2/repository"
export SCALA_CLASSPATH="${M2_REPO}/org/apache/httpcomponents/httpclient/4.0.1/*"
export SCALA_CLASSPATH="${SCALA_CLASSPATH}:${M2_REPO}/org/apache/httpcomponents/httpcore/4.0.1/*"
export SCALA_CLASSPATH="${SCALA_CLASSPATH}:${M2_REPO}/commons-logging/commons-logging/1.1.1/*"
export PLAY_HOME=~/apps/play
export JUSTNIFFER_HOME=~/apps/justsniffer

#export PATH="$(brew --prefix coreutils)/libexec/gnubin:${PATH}"

export MANPATH=/opt/local/share/man:"${MANPATH}"
export MANPATH=/usr/local/share/man:"${MANPATH}"
export MANPATH="${JUSTNIFFER_HOME}/share/man":${MANPATH}

export PATH=${HOME_BIN}:${PATH}
export PATH="${PATH}":"${JRUBY_HOME}"/bin
export PATH="${ANT_HOME}"/bin:"${PATH}"
export PATH=~/apps/maven/bin:"${PATH}"
export PATH=~/apps/gradle/bin:"${PATH}"
export PATH=~/apps/xmlbeans/bin:"${PATH}"
export PATH=~/apps/scala/bin:"${PATH}"
export PATH="${SCALA_HOME}":"${PATH}"
export PATH="${NODE_HOME}/bin":"${PATH}"
export PATH=/usr/local/sbin:"${PATH}"
export PATH=~/.cabal/bin:"${PATH}"
export PATH=/usr/local/mysql/bin:"${PATH}"
export PATH=~/apps/play:"${PATH}"
export PATH="${PROTOBUF_HOME}/bin":"${PATH}"
#export PATH=/usr/local/share/python:${PATH}
export PATH=${PLAY_HOME}:${PATH}
export PATH=${SML_HOME}:${PATH}
export PATH="${JUSTNIFFER_HOME}/bin":${PATH}
export PATH="${HOME}/.rbenv/bin":${PATH}
export PATH=/usr/local/bin:"${PATH}"
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

alias ls='ls -Fl -G'
alias vi='vi -c NERDTreeToggle'
alias grep='grep --color=auto'
alias mysql_start='sudo MySQLCOM start'
alias mysql_stop='sudo MySQLCOM stop'
alias mvim='mvim -c NERDTreeToggle'
alias serve="ruby -r webrick -e\"s = WEBrick::HTTPServer.new(:Port => 3000, :DocumentRoot => Dir.pwd); trap('INT') { s.shutdown }; s.start\""
alias tinyscheme="rlwrap scheme"

#source "/Users/alin/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

function java8 () {
  export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
}

function urlencode () {
  echo $1 | perl -MURI::Escape -ne 'chomp;print uri_escape($_),"\n"'
}

function urldecode () {
  echo $1 | perl -MURI::Escape -ne 'chomp;print uri_unescape($_),"\n"'
}

eval "$(direnv hook zsh)"

function nvm () {
  if hash brew 2>/dev/null; then
    if [ -f $(brew --prefix nvm)/nvm.sh ]; then
      export NVM_DIR=~/.nvm
      source $(brew --prefix nvm)/nvm.sh
    fi
  fi
}

