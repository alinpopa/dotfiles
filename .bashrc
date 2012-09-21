#!/bin/bash

# mercurial/python related variables
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
###

# jruby
export JRUBY_HOME=~/apps/jruby
###

# java stuff
#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
#export JAVA5_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.5/Home
###

# Apache Ant
export ANT_HOME=~/apps/ant
export ANT_OPTS="-Xmx512m"
###

export SVN_EDITOR=vim
export GROOVY_HOME=~/apps/groovy
export JLINE_HOME=~/apps/jline
export HOME_USR_LOCAL=~/usr/local
export HOME_BIN=~/bin
export PLT_SCHEME_HOME=~/apps/plt-scheme
export MAC_VIM_HOME=/Applications/macvim
export GOROOT=~/apps/go
export GOOS=darwin
export GOARCH=amd64
export GOBIN="${GOROOT}/bin"
export SCALA_HOME=/Users/alin/apps/scala
export GROOVY_HOME=/Users/alin/apps/groovy
export NODE_HOME=/Users/alin/usr/local/node
export JYTHON_HOME=/Users/alin/apps/jython
#export QERL_HOME="${HOME}/work/erlang/qerl"
export PROTOBUF_HOME="${HOME}/apps/protobuf"
export CUSTOM_ERL="${HOME}/apps/erlang-custom/erlang"
export RIAK_BIN_DIR="/Users/alin/apps/riak/bin"
export SBT_HOME="/Users/alin/apps/sbt"

export PATH="${PATH}":"${JRUBY_HOME}"/bin
export PATH="${ANT_HOME}"/bin:"${PATH}"
export PATH="${PATH}":"${HOME_BIN}"
export PATH=~/apps/maven/bin:"${PATH}"
export PATH="${GROOVY_HOME}/bin:${PATH}"
export PATH=~/apps/xmlbeans/bin:"${PATH}"
export PATH=~/apps/scala/bin:"${PATH}"
export PATH="${PLT_SCHEME_HOME}"/bin:"${PATH}"
export PATH="${MAC_VIM_HOME}":"${PATH}"
export PATH="${GOBIN}":"${PATH}"
export PATH="${SCALA_HOME}":"${PATH}"
export PATH="${GROOVY_HOME}":"${PATH}"
export PATH="${NODE_HOME}/bin":"${PATH}"
export PATH="${JYTHON_HOME}/bin":"${PATH}"
export PATH=/usr/local/bin:"${PATH}"
export PATH=/usr/local/sbin:"${PATH}"
export PATH=~/.cabal/bin:"${PATH}"
export PATH=/usr/local/mysql/bin:"${PATH}"
export PATH=~/apps/play:"${PATH}"
export PATH="${PROTOBUF_HOME}/bin":"${PATH}"
#export PATH="${CUSTOM_ERL}/bin":"${PATH}"
export PATH=/usr/local/share/python:${PATH}
export PATH=${SBT_HOME}/bin:${PATH}

export MANPATH=/opt/local/share/man:"${MANPATH}"
export MANPATH=/usr/local/share/man:"${MANPATH}"
#export PS1='[\u@\h:\w]$(parse_git_branch)\$ '
#export PS1='[\u@\h:\W]\$ '
#export PS1='\[\e[0;32m\]λ\[\e[m\] \[\e[1;34m\]\W\[\e[m\]$ '
#export PS1='[\[\e[0;32m\]${one_japanese_word_per_day}\[\e[m\] \[\e[0;34m\]\W\[\e[m\]]$ '
#export PS1='ワークステーション'
#export PS1='[\[\e[0;32m\]\W\[\e[m\]]$ '
#export PS1='[\[\e[0;32m\]\W\[\e[m\]\e[0;33;49m\]$(parse_git_branch)\[\e[0;0m]$ '
#export PS1="[\W]$ "
#export PS1='\W % '
#export PS1='[\[\033[0;32m\]\u\[\033[00m\]@\[\033[0;33m\]\h\[\033[00m\] \W\[\033[0;36m\]$(__git_ps1 " (%s)")\[\033[00m\]] $ '

export M2_REPO="/Users/alin/.m2/repository"
export SCALA_CLASSPATH="${M2_REPO}/org/apache/httpcomponents/httpclient/4.0.1/*"
export SCALA_CLASSPATH="${SCALA_CLASSPATH}:${M2_REPO}/org/apache/httpcomponents/httpcore/4.0.1/*"
export SCALA_CLASSPATH="${SCALA_CLASSPATH}:${M2_REPO}/commons-logging/commons-logging/1.1.1/*"

alias ls='ls -Fl -G'
alias vi='vi -c NERDTreeToggle'
alias grep='grep --color=auto'
#alias vim='vim'
alias mysql_start='sudo MySQLCOM start'
alias mysql_stop='sudo MySQLCOM stop'
alias mvim='mvim -c NERDTreeToggle'
alias serve="ruby -r webrick -e\"s = WEBrick::HTTPServer.new(:Port => 3000, :DocumentRoot => Dir.pwd); trap('INT') { s.shutdown }; s.start\""
alias tinyscheme="rlwrap scheme"

#~/bin/whats_the_japanese_word


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
