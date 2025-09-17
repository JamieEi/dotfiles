#export ANDROID_NDK_REPOSITORY=/opt/android_ndk
#export ANDROID_NDK=${ANDROID_NDK_REPOSITORY}/r17fb2
export EDITOR=/usr/bin/vim
export GEM_HOME=~/.gems

# Do OS dependant stuff
case `uname` in
  Darwin)
    export ANDROID_SDK=~/Library/Android/sdk
    export ANDROID_HOME=${ANDROID_SDK}
  ;;
  Linux)
    export ANDROID_SDK=/opt/android_sdk
    export ANDROID_HOME=${ANDROID_SDK}
  ;;
esac

PATH=~/scripts:~/scripts.local:~/bin:~/.local/bin:$ANDROID_SDK/emulator:$PATH
path+=$HOME/.cargo/bin
path+=$GEM_HOME/bin

# Add segments that depend on overrides here
if [[ -d "$ANDROID_SDK" ]]; then
    path+=$ANDROID_SDK/tools
    path+=$ANDROID_SDK/platform-tools
    BUILD_TOOLS="$ANDROID_SDK/build-tools"
    # Something is wrong with the method below of getting the latest build tools dir: 1) doesn't
    # work when added to path; 2) globbing removes it; 3) shows up colored in shell
    # path+="$BUILD_TOOLS/$(ls $BUILD_TOOLS | tail -n 1)"
   path+="$BUILD_TOOLS/32.0.0"
fi

if [[ -e ~/.zshenv.local ]]; then
    source ~/.zshenv.local
fi

if [[ -e "$HOME/.cargo/env" ]]; then
  source "$HOME/.cargo/env"
fi

if [[ ! -e $GEM_HOME/bin ]]; then
    mkdir -p $GEM_HOME/bin
fi

# Remove path duplicates
typeset -U PATH

# Remove any entries that don't exist
# http://stackoverflow.com/questions/9347478/how-to-edit-path-variable-in-zsh
path=($^path(N))

