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

precmd () {print -Pn "\e]2; %~/ \a"}
preexec () {print -Pn "\e]2; %~/ \a"}

# Setting up the VirtualEnv
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/share/python/virtualenvwrapper.sh ]]; then
  source /usr/local/share/python/virtualenvwrapper.sh
else
  echo "WARNING: Can't find virtualenvwrapper.sh"
fi

