# https://josnun.com/posts/managing-dotfiles-and-zsh-with-dotbot-and-antigen/

ZSH_BASE=$HOME/dotfiles # Base directory for ZSH configuration

source $ZSH_BASE/antigen/antigen.zsh # Load Antigen

source ~/.aliases # Source some extra files
source ~/.functions
source ~/.vars

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

#--------------------------------------------------------------------------------
# Old
#--------------------------------------------------------------------------------

# echo begin zshrc

# Helpful links:
# http://grml.org/zsh/zsh-lovers.html
# http://blog.andrewhays.net/love-your-terminal
# http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/

#fpath=($fpath ~/zsh-functions)

#--------------------------------------------------------------------------------
# Aliases
#--------------------------------------------------------------------------------

#--------------------------------------------------------------------------------
# History
#--------------------------------------------------------------------------------

#HISTFILE=~/.histfile
#HISTSIZE=1000
#SAVEHIST=1000
#setopt inc_append_history
#setopt share_history

#--------------------------------------------------------------------------------
# Completions
#--------------------------------------------------------------------------------

# Enable completions
#autoload -Uz compinit
#compinit

# Completion caching
#zstyle ':completion:*' use-cache on
#zstyle ':completion:*' cache-path ~/.zsh/cache

# Ignore completion functions for commands you dont have
#zstyle ':completion:*:functions' ignored-patterns '_*'

# Completing process IDs with menu selection
#zstyle ':completion:*:*:kill:*' menu yes select
#zstyle ':completion:*:kill:*' force-list always

# Fix slow git completions: http://talkings.org/post/5236392664/zsh-and-slow-git-completion
#__git_files () { _wanted files expl 'local files' _files }

#--------------------------------------------------------------------------------
# Key bindings
#--------------------------------------------------------------------------------

# Emacs editing mode
#bindkey -e

#bindkey "\e[1~" beginning-of-line
#bindkey "\e[4~" end-of-line
#bindkey "\e[5~" beginning-of-history
#bindkey "\e[6~" end-of-history
#bindkey "^[[3~" delete-char
#bindkey "^[3;5~" delete-char
#bindkey "\e[2~" quoted-insert
#bindkey "\e[5C" forward-word
#bindkey "\eOc" emacs-forward-word
#bindkey "\e[5D" backward-word
#bindkey "\eOd" emacs-backward-word
#bindkey "\ee[C" forward-word
#bindkey "\ee[D" backward-word
#bindkey "^H" backward-delete-word
# for rxvt
#bindkey "\e[8~" end-of-line
#bindkey "\e[7~" beginning-of-line
# for non RH/Debian xterm, can't hurt for RH/DEbian xterm
#bindkey "\eOH" beginning-of-line
#bindkey "\eOF" end-of-line
# for freebsd console
#bindkey "\e[H" beginning-of-line
#bindkey "\e[F" end-of-line
# completion in the middle of a line
#bindkey '^i' expand-or-complete-prefix

# Alternate / much smaller solution to the same end by adding the following to your .zshrc:
# eval "$(sed -n 's/^/bindkey /; s/: / /p' /etc/inputrc)"

#--------------------------------------------------------------------------------
# Misc 
#--------------------------------------------------------------------------------

#export BROWSER="chromium"
#export EDITOR="vim"
#export LESS="-r"
#export PAGER="less"
#export VISUAL="vim"

# Extended globbing: http://zsh.sourceforge.net/Intro/intro_2.html
#setopt extendedglob

# http://zsh.sourceforge.net/Doc/Release/Options.html
#setopt auto_cd

# Prompt
#autoload -U colors && colors
#PS1="%{$fg[yellow]%}%n%{$reset_color%}@%{$fg[green]%}%m %{$fg[white]%}%~ %{$reset_color%}%% "

#--------------------------------------------------------------------------------
# VirtualBox
#--------------------------------------------------------------------------------

#alias vbm='VBoxManage $*'

#--------------------------------------------------------------------------------
# Boto / Git Annex
#--------------------------------------------------------------------------------

#if [[ -e ~/.boto ]]; then
#    export AWS_ACCESS_KEY_ID="$(cat ~/.boto | grep -i AWS_ACCESS_KEY_ID | sed 's/^.*=\s*//')"
#    export AWS_SECRET_ACCESS_KEY="$(cat ~/.boto | grep -i AWS_SECRET_ACCESS_KEY | sed 's/^.*=\s*//')"
#fi

#--------------------------------------------------------------------------------
# Local overrides
#--------------------------------------------------------------------------------

#for f in ~/.zshrc_*
#do
#    echo "sourcing $f"
#    source $f
#done

#--------------------------------------------------------------------------------
# Path
#--------------------------------------------------------------------------------

#--------------------------------------------------------------------------------
# Finale
#--------------------------------------------------------------------------------

# Start @ home
#cd


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="/home/jamieei/.sdkman"
#[[ -s "/home/jamieei/.sdkman/bin/sdkman-init.sh" ]] && source "/home/jamieei/.sdkman/bin/sdkman-init.sh"

# added by setup_fb4a.sh
export ANDROID_SDK=/opt/android_sdk
export ANDROID_NDK_REPOSITORY=/opt/android_ndk
export ANDROID_HOME=${ANDROID_SDK}
export PATH=${PATH}:${ANDROID_SDK}/emulator:${ANDROID_SDK}/tools:${ANDROID_SDK}/tools/bin:${ANDROID_SDK}/platform-tools

# added by setup_fb4a.sh
export ANDROID_SDK=/opt/android_sdk
export ANDROID_NDK_REPOSITORY=/opt/android_ndk
export ANDROID_HOME=${ANDROID_SDK}
export PATH=${PATH}:${ANDROID_SDK}/emulator:${ANDROID_SDK}/tools:${ANDROID_SDK}/tools/bin:${ANDROID_SDK}/platform-tools
