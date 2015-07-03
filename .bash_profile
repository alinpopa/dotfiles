ulimit -n 8192

source ~/.bashrc

##
# Your previous /Users/alin/.bash_profile file was backed up as /Users/alin/.bash_profile.macports-saved_2010-12-05_at_08:59:06
##

# MacPorts Installer addition on 2010-12-05_at_08:59:06: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2010-12-05_at_08:59:06: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.

#if [ -f /opt/local/etc/bash_completion ]; then
#    . /opt/local/etc/bash_completion
#fi
#
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

[[ -s "/Users/alin/.rvm/scripts/rvm" ]] && source "/Users/alin/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
