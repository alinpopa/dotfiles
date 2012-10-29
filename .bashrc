#!/bin/bash

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

export SVN_EDITOR=vim
export HOME_BIN=~/bin
export GOROOT=~/apps/go
export GOOS=darwin
export GOARCH=amd64
export GOBIN="${GOROOT}/bin"
export SCALA_HOME=/Users/alin/apps/scala
export NODE_HOME=/Users/alin/usr/local/node
export PROTOBUF_HOME="${HOME}/apps/protobuf"
export RIAK_BIN_DIR="/Users/alin/apps/riak/bin"
export SBT_HOME="/Users/alin/apps/sbt"

export PATH="${PATH}":"${JRUBY_HOME}"/bin
export PATH="${ANT_HOME}"/bin:"${PATH}"
export PATH="${PATH}":"${HOME_BIN}"
export PATH=~/apps/maven/bin:"${PATH}"
export PATH=~/apps/xmlbeans/bin:"${PATH}"
export PATH=~/apps/scala/bin:"${PATH}"
export PATH="${GOBIN}":"${PATH}"
export PATH="${SCALA_HOME}":"${PATH}"
export PATH="${NODE_HOME}/bin":"${PATH}"
export PATH=/usr/local/bin:"${PATH}"
export PATH=/usr/local/sbin:"${PATH}"
export PATH=~/.cabal/bin:"${PATH}"
export PATH=/usr/local/mysql/bin:"${PATH}"
export PATH=~/apps/play:"${PATH}"
export PATH="${PROTOBUF_HOME}/bin":"${PATH}"
export PATH=/usr/local/share/python:${PATH}
export PATH=${SBT_HOME}/bin:${PATH}

export MANPATH=/opt/local/share/man:"${MANPATH}"
export MANPATH=/usr/local/share/man:"${MANPATH}"

export M2_REPO="/Users/alin/.m2/repository"
export SCALA_CLASSPATH="${M2_REPO}/org/apache/httpcomponents/httpclient/4.0.1/*"
export SCALA_CLASSPATH="${SCALA_CLASSPATH}:${M2_REPO}/org/apache/httpcomponents/httpcore/4.0.1/*"
export SCALA_CLASSPATH="${SCALA_CLASSPATH}:${M2_REPO}/commons-logging/commons-logging/1.1.1/*"

alias ls='ls -Fl -G'
alias vi='vi -c NERDTreeToggle'
alias grep='grep --color=auto'
alias mysql_start='sudo MySQLCOM start'
alias mysql_stop='sudo MySQLCOM stop'
alias mvim='mvim -c NERDTreeToggle'
alias serve="ruby -r webrick -e\"s = WEBrick::HTTPServer.new(:Port => 3000, :DocumentRoot => Dir.pwd); trap('INT') { s.shutdown }; s.start\""
alias tinyscheme="rlwrap scheme"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

