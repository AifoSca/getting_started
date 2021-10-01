source .bash_git
alias ll='ls -lGaf'
#---colour chart ----------------------------------------------------------+
# Reset
Color_Off="\[\033[0m\]" # Text Reset

# Regular Colors
Red="\[\033[0;31m\]" # Red
Yellow="\[\033[0;33m\]" # Yellow
Blue="\[\033[0;34m\]" # Blue

# Bold
BRed="\[\033[1;31m\]" # Red
BBlue="\[\033[1;34m\]" # Blue

# Bold High Intensty
BIRed="\[\033[1;91m\]" # Red
BIGreen="\[\033[1;92m\]" # Green

# Various variables you might want for your PS1 prompt instead
LoggedUser="\u"
HostName="\h"
PathShort="\w"
PathFull="\W"
NewLine="\n"
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"

export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;37m\]$? \
$(if [[ $? == 0 ]]; then echo "\[\033[01;32m\]\342\234\223"; else echo "\[\033[01;31m\]\342\234\227"; fi) \
$([ "$(id -u)" == "0" ] && echo "'${BRed}'" || echo "'${BBlue}'")'""${LoggedUser}@${HostName}'$(kube_ps1)'""${Color_Off}'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    # @4 - Clean repository - nothing to commit
    echo "'${BIGreen}'"$(__git_ps1 " (%s)"); \
  else \
    # @5 - Changes to working tree
    echo "'${BIRed}'"$(__git_ps1 " {%s}"); \
  fi) '${Yellow}"${NewLine}[ "${PathShort}" ] "${Color_Off}'\n$ "; \
else \
  # @2 - Prompt when not in GIT repo
  echo "'${Blue}"${NewLine}[ "${PathShort}" ] "${Color_Off}'\n$ "; \
fi)'