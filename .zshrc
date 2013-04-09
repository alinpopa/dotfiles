# Zsh custom folder completions
fpath=(~/zsh_completions $fpath)
fpath=(/usr/local/share/zsh/site-functions $fpath)

autoload -U colors compinit && colors
compinit

PROMPT="%{$fg[green]%}%c %{$reset_color%}%% "

# History stuff
HISTSIZE=500
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

alias ls='ls -Fl -G'
alias vi='vi -c NERDTreeToggle'
alias grep='grep --color=auto'
alias mysql_start='sudo MySQLCOM start'
alias mysql_stop='sudo MySQLCOM stop'
alias mvim='mvim -c NERDTreeToggle'
alias serve="ruby -r webrick -e\"s = WEBrick::HTTPServer.new(:Port => 3000, :DocumentRoot => Dir.pwd); trap('INT') { s.shutdown }; s.start\""
alias tinyscheme="rlwrap scheme"

