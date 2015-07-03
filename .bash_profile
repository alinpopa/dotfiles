ulimit -n 8192

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

[[ -s "/Users/alin/.rvm/scripts/rvm" ]] && source "/Users/alin/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

