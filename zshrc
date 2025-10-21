#--------------------------------------------------------------------------------
# Antigen: https://github.com/zsh-users/antigen
#--------------------------------------------------------------------------------

 # Load Antigen
source $HOMEBREW_PREFIX/share/antigen/antigen.zsh

# Load extra files
source ~/.aliases
source ~/.functions

# Use Oh My Zsh: https://ohmyz.sh/
antigen use oh-my-zsh

# Load bundles
# https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins
antigen bundles <<EOBUNDLES
  command-not-found  # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/command-not-found
  zsh-users/zsh-autosuggestions  # https://github.com/zsh-users/zsh-autosuggestions
  zsh-users/zsh-completions  # https://github.com/zsh-users/zsh-completions
  zsh-users/zsh-history-substring-search  # https://github.com/zsh-users/zsh-history-substring-search
  zsh-users/zsh-syntax-highlighting  # https://github.com/zsh-users/zsh-syntax-highlighting
EOBUNDLES

# Do OS dependant stuff
case `uname` in
  Darwin)
    antigen bundle macos
  ;;
  Linux)
    # Commands for Linux go here
  ;;
esac

# Set the theme
antigen theme robbyrussell #theunraveler

# And lastly, apply the Antigen stuff
antigen apply

#--------------------------------------------------------------------------------
# Misc
#--------------------------------------------------------------------------------

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

[ -e ~/.zshrc.local ] && source ~/.zshrc.local
