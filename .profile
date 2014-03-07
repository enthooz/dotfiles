export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=1

. ~/.bash_aliases

##
# Your previous /Users/andrew/.profile file was backed up as /Users/andrew/.profile.macports-saved_2010-03-01_at_13:13:03
##

# MacPorts Installer addition on 2010-03-01_at_13:13:03: adding an appropriate PATH variable for use with MacPorts.
# export PATH=/Applications/eclipse:$PATH
# export PATH=/Users/andrew/Documents/library/bash:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/ImageMagick-6.6.7/bin:$PATH
# export PATH=/Users/andrew/Documents/library/android/sdk/tools:/Users/andrew/Documents/library/android/sdk/platform-tools:$PATH
export PATH=/Applications/eclipse:$PATH
export PATH=/Users/andrew/Documents/library/bash:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH
export PATH=/Users/andrew/Documents/library/android/sdk/tools:/Users/andrew/Documents/library/android/sdk/platform-tools:$PATH
export PATH=$HOME/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
export PYTHONPATH=.:/Users/andrew/Documents/library/python:$PYTHONPATH

# don't add duplicate commands (&) or specified commands to history
export HISTIGNORE="&:ls:[bf]g:exit:cd *"

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/:$DYLD_LIBRARY_PATH

EDITOR="/usr/bin/vim"; export EDITOR

__load_cdrc() # called from .rvm/scripts/cd
{
  local working_dir
  working_dir="${1:-"$PWD"}"
  if [[ -f "$working_dir/.cdrc" ]]; then
      echo "Loading .cdrc..."
      source "$working_dir/.cdrc"
  fi
}

#{{{ RVM
#test -r /sw/bin/init.sh && . /sw/bin/init.sh
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # Load RVM into a shell session *as a function*
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion # Load RVM completion
source "$rvm_path/contrib/ps1_functions"
ps1_set
#}}}

# append commands to history file
shopt -s histappend
# save each command right after it is executed, rather than at the end of a session
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# startup virtualenv-burrito
# if [ -f $HOME/.venvburrito/startup.sh ]; then
#     . $HOME/.venvburrito/startup.sh
# fi

#{{{ AWS tools
export AWS_ELB_HOME="/Users/andrew/Documents/library/aws/elb"
export EC2_HOME="/Users/andrew/Documents/library/aws/ec2-api-tools"
export JAVA_HOME="/Library/Java/Home"
#export JAVA_HOME=/usr
export AWS_CREDENTIAL_FILE="/Users/andrew/.elb_creds"
. /Users/andrew/.ec2_creds
export PATH=$PATH:$EC2_HOME/bin
#}}}

## helpful git stuff (2012-05-25)
source ~/Documents/library/git/git-completion.bash
alias gco='git co'
alias gci='git ci'
alias grb='git rb'

[ -s "/Users/andrew/.scm_breeze/scm_breeze.sh" ] && . "/Users/andrew/.scm_breeze/scm_breeze.sh"

export NODE_PATH=/usr/local/lib/node_modules
export PATH=$HOME/node_modules/.bin:$PATH

# colorize maven output
. ~/Documents/library/bash/mvncolor.sh
. ~/.surf_tracker_credentials
