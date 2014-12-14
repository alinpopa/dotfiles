# Setting up the VirtualEnv
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
export HOME_BIN=~/bin
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

