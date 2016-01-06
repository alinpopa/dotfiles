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

export SVN_EDITOR=vim
export HOME_BIN=${HOME}/bin
export SCALA_HOME=/Users/alin/apps/scala
export RIAK_BIN_DIR="/Users/alin/apps/riak/bin"

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
export MZBENCH_HOME=~/apps/mzbench

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
export PATH=/usr/local/sbin:"${PATH}"
export PATH="${PATH}":~/.cabal/bin
export PATH=${PLAY_HOME}:${PATH}
export PATH=${PATH}:${JUSTNIFFER_HOME}/bin
export PATH=/usr/local/bin:"${PATH}"
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
#export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias ls='ls -Fl -G'
alias vi='vi -c NERDTreeToggle'
alias vim='mvim -v'
alias grep='grep --color=auto'
alias mysql_start='sudo MySQLCOM start'
alias mysql_stop='sudo MySQLCOM stop'
alias serve="ruby -r webrick -e\"s = WEBrick::HTTPServer.new(:Port => 3000, :DocumentRoot => Dir.pwd); trap('INT') { s.shutdown }; s.start\""
alias tinyscheme="rlwrap scheme"

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

for src_file in $HOME/.config/*.src.profile; do
  if [ -f $src_file ]; then
    source $src_file
  fi
done

