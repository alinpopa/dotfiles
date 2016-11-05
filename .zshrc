ulimit -n 65000
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

alias ls='ls -Fl -G'
if [[ `uname` == 'Darwin' ]]; then
  alias vi='vim'
  alias vim='mvim -v'
fi
alias grep='grep --color=auto'
alias tinyscheme="rlwrap scheme"

for src_file in ${HOME}/.config/*.src.rc(.N); do
  if [ -f $src_file ]; then
    source $src_file
  fi
done

