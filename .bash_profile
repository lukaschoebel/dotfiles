# Homebrew
export PATH=/usr/local/bin:$PATH

# Virtual Environment Wrapper
# source /usr/local/bin/virtualenvwrapper.sh

#virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/Library/Frameworks/Python.framework/Versions/3.6/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/Library/Frameworks/Python.framework/Versions/3.6/bin/virtualenv
source /Library/Frameworks/Python.framework/Versions/3.6/bin/virtualenvwrapper.sh

# added by Miniconda3 installer
export PATH="/Users/Lukas/miniconda3/bin:$PATH"

##
# Your previous /Users/Lukas/.bash_profile file was backed up as /Users/Lukas/.bash_profile.macports-saved_2018-04-16_at_16:49:14
##

# MacPorts Installer addition on 2018-04-16_at_16:49:14: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/Lukas/google-cloud-sdk/path.bash.inc' ]; then source '/Users/Lukas/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/Lukas/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/Lukas/
export PATH="/usr/local/opt/openssl/bin:$PATH"

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin