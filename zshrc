# https://josnun.com/posts/managing-dotfiles-and-zsh-with-dotbot-and-antigen/

ZSH_BASE=$HOME/dotfiles # Base directory for ZSH configuration

source $ZSH_BASE/antigen/antigen.zsh # Load Antigen

source ~/.aliases # Source some extra files
source ~/.functions
source ~/.vars

# Keychain: https://esc.sh/blog/ssh-agent-windows10-wsl2/
/usr/bin/keychain -q --nogui $HOME/.ssh/id_ed25519
source $HOME/.keychain/$HOST-sh

#--------------------------------------------------------------------------------
# Antigen
#--------------------------------------------------------------------------------

antigen use oh-my-zsh # Yes, I want to use Oh My ZSH

# Terminal stuff
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle z

# Node stuff
antigen bundle node
antigen bundle npm

# Do OS dependant stuff
case `uname` in
  Darwin)
    # Commands for OS X go here
    antigen bundle osx
  ;;
  Linux)
    # Commands for Linux go here
  ;;
esac

# Set the theme
antigen theme theunraveler

# And lastly, apply the Antigen stuff
antigen apply

#--------------------------------------------------------------------------------
# Misc
#--------------------------------------------------------------------------------

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/jamieei/.sdkman"
[[ -s "/home/jamieei/.sdkman/bin/sdkman-init.sh" ]] && source "/home/jamieei/.sdkman/bin/sdkman-init.sh"

# added by setup_fb4a.sh
#export ANDROID_SDK=/opt/android_sdk
#export ANDROID_NDK_REPOSITORY=/opt/android_ndk
#export ANDROID_HOME=${ANDROID_SDK}
#export PATH=${PATH}:${ANDROID_SDK}/emulator:${ANDROID_SDK}/tools:${ANDROID_SDK}/tools/bin:${ANDROID_SDK}/platform-tools

[ -e ~/.zshrc.local ] && source ~/.zshrc.local

