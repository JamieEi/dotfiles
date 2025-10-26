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

[ -e ~/.zshenv.local ] && source ~/.zshenv.local
