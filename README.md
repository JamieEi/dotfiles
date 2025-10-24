# Dotfiles for Jamie Eisenhart

Dotfile configuration using:
- [Dotbot](https://github.com/anishathalye/dotbot) to bootstrap dotfiles
- [Antigen](https://github.com/zsh-users/antigen) for zsh config
- [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) for tmux config (not enabled?)
- [Vundle](https://github.com/VundleVim/Vundle.vim) for vim config
- [lazy.nvim](https://lazy.folke.io/) for nvim (eventually)

## Prerequisites

### Packages

MacOS:

```
brew install \
  dotbot \
  eza \
  git \
  tmux \
  zsh
```

### GitHub

- [Connecting to GitHub with SSH](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh)

## Setup

```
cd ~
git clone git@github.com:JamieEi/dotfiles.git
dotfiles/install
```

## References

### General

- [GitHub dotfiles guide](https://dotfiles.github.io/)
- [Dotbot](https://github.com/anishathalye/dotbot)
- [Managing Your Dotfiles](https://www.anishathalye.com/2014/08/03/managing-your-dotfiles/)
  by Anish Athalye (dotbot author)

### Tmux

- [Installation](https://github.com/tmux/tmux/wiki/Installing)
- [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (TPM)
- [Manual page](https://man7.org/linux/man-pages/man1/tmux.1.html)
- [Wiki](https://github.com/tmux/tmux/wiki)
- [Useful TMUX Plugins...](https://medium.com/@hammad.ai/useful-tmux-plugins-which-i-frequently-use-at-work-41a9b46f7bcb)

### Vim

- [Vundle](https://github.com/VundleVim/Vundle.vim) plugin manager

### WSL

- [Keychain](https://devblogs.microsoft.com/commandline/sharing-ssh-keys-between-windows-and-wsl-2/)

### Zsh

- [Installation](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [Startup files](http://zsh.sourceforge.net/Intro/intro_3.html)
- [Antigen](https://github.com/zsh-users/antigen) plugin manager
- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

### Examples

- [Managing dotfiles and ZSH with dotbot and antigen](https://josnun.com/posts/managing-dotfiles-and-zsh-with-dotbot-and-antigen/)
