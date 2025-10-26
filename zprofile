export LC_ALL=en_US.UTF-8

echo "PATH now $PATH"
if [[ $(uname) == "Darwin" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
echo "PATH after brew shellenv $PATH"

if [[ -e ~/.zprofile.local ]]; then
    source ~/.zprofile.local
fi
