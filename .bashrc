#!/bin/bash

# mercurial/python related variables
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Reset
Color_Off='\e[0m'       # Text Reset

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Underline
UBlack='\e[4;30m'       # Black
URed='\e[4;31m'         # Red
UGreen='\e[4;32m'       # Green
UYellow='\e[4;33m'      # Yellow
UBlue='\e[4;34m'        # Blue
UPurple='\e[4;35m'      # Purple
UCyan='\e[4;36m'        # Cyan
UWhite='\e[4;37m'       # White

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

# High Intensity
IBlack='\e[0;90m'       # Black
IRed='\e[0;91m'         # Red
IGreen='\e[0;92m'       # Green
IYellow='\e[0;93m'      # Yellow
IBlue='\e[0;94m'        # Blue
IPurple='\e[0;95m'      # Purple
ICyan='\e[0;96m'        # Cyan
IWhite='\e[0;97m'       # White

# Bold High Intensity
BIBlack='\e[1;90m'      # Black
BIRed='\e[1;91m'        # Red
BIGreen='\e[1;92m'      # Green
BIYellow='\e[1;93m'     # Yellow
BIBlue='\e[1;94m'       # Blue
BIPurple='\e[1;95m'     # Purple
BICyan='\e[1;96m'       # Cyan
BIWhite='\e[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\e[0;100m'   # Black
On_IRed='\e[0;101m'     # Red
On_IGreen='\e[0;102m'   # Green
On_IYellow='\e[0;103m'  # Yellow
On_IBlue='\e[0;104m'    # Blue
On_IPurple='\e[0;105m'  # Purple
On_ICyan='\e[0;106m'    # Cyan
On_IWhite='\e[0;107m'   # White

export PS1="${Green}\W %${Color_Off} "
export HOME_BIN=${HOME}/bin
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

eval "$(direnv hook bash)"

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

