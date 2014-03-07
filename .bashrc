# git shortcuts
[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"

# aliases
for alias_file in ~/.dotfiles/aliases/* ~/.dotfiles/aliases/old/*; do
  [ -f "${alias_file}" ] || continue;
  source $alias_file;
done

# boxen
source /opt/boxen/env.sh


# various environmental variables that were sent in older versions of
# .profile, .bashrc, or .bash_profile
#export PATH="~/bin:$PATH"
#export GIT_REPO_DIR="$HOME/src"

#export JAVA_HOME="$(/usr/libexec/java_home)"
#export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
#export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
#export AWS_CLOUDWATCH_HOME="/opt/boxen/homebrew/Library/LinkedKegs/cloud-watch/jars"
#export SERVICE_HOME="$AWS_CLOUDWATCH_HOME"
