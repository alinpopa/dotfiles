autoload -U colors && colors

PROMPT="%{$fg[green]%}%c %{$reset_color%}%% "

# History stuff
HISTSIZE=1000
HISTFILE=~/.history
SAVEHIST=1000
#setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY

source ~/.bash_profile

function tab_title () {
  if [ -z $1 ]; then
    echo -ne "\e]1; \a"
  else
    echo -ne "\e]1;${1}\a"
  fi
}

