# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# https://stackoverflow.com/questions/45577194/failed-to-activate-virtualenv-with-pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

cd

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/jamieei/.sdkman"
[[ -s "/home/jamieei/.sdkman/bin/sdkman-init.sh" ]] && source "/home/jamieei/.sdkman/bin/sdkman-init.sh"
 
[ -s "$HOME/.cargo/env" ] && \. "$HOME/.cargo/env"

