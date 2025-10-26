export LC_ALL=en_US.UTF-8

[ -e $GEM_HOME/bin ] || mkdir -p $GEM_HOME/bin

# Tool manipulatons of PATH
if [[ $(uname) -eq "Darwin" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
[ -e "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"

PATH=~/scripts.local:~/scripts:~/bin:~/.local/bin:$ANDROID_SDK/emulator:$PATH
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

# Remove path duplicates
typeset -U PATH

# Remove any entries that don't exist
# http://stackoverflow.com/questions/9347478/how-to-edit-path-variable-in-zsh
path=($^path(N))

# echo "PATH after zprofile = $PATH"

[ -e ~/.zprofile.local ] && source ~/.zprofile.local
