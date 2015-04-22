# Zsh custom folder completions
fpath=(~/zsh_completions $fpath)
fpath=(/usr/local/share/zsh/site-functions $fpath)

autoload -U colors compinit && colors
compinit

PROMPT="%{$fg[green]%}%c %{$reset_color%}%% "

# History stuff
HISTSIZE=1000
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

