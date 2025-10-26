# Dotfiles for Jamie Eisenhart

Dotfile configuration using:
- [Dotbot](https://github.com/anishathalye/dotbot) to bootstrap dotfiles
- [Starship](https://starship.rs/) for xplat promting
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
  fzf \
  git \
  starship \
  tig \
  tmux \
  zoxide \
  zsh &&
brew install --cask font-inconsolata-nerd-font
```

### GitHub

- [Connecting to GitHub with SSH](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh)

## Setup

```
cd ~
git clone git@github.com:JamieEi/dotfiles.git
dotfiles/install
```

## Zsh Startup Files

The standard startup files are explained (badly) in the [zsh manual](http://zsh.sourceforge.net/Intro/intro_3.html). Most startup files support a local version, which is sourced after the main file. Local files are expected to contain host-specific overrides and are not source controlled.

For an interactive shell the combined files are (in invocation order):

1. `.zshenv`:
   - Sourced on all invocations of the shell
   - Should contain commands to set the command search path, plus other important environment variables
   - Should not contain commands that produce output or assume the shell is attached to a tty
2. `.zprofile`: Similar to `.zlogin`, but for interactive shells
3. `.zshrc`:
   - Should contain commands to set up aliases, functions, options, key bindings, etc.

For login shells the files are (again in order):

1. `.zshenv`: Same
2. `.zlogin`:
   - Should contain commands that should be executed only in login shells
   - Not the place for alias definitions, options, environment variable settings, etc.
   - Should not change the shell environment at all
   - Should be used to set the terminal type and run a series of external commands (fortune, msgs, etc).
3. `.zlogout`: Sourced when login shells exit

## References

### General

- [GitHub dotfiles guide](https://dotfiles.github.io/)
- [Dotbot](https://github.com/anishathalye/dotbot)
- [Managing Your Dotfiles](https://www.anishathalye.com/2014/08/03/managing-your-dotfiles/)
  by Anish Athalye (dotbot author)

### Nerd Fonts

- [Downloads](https://www.nerdfonts.com/font-downloads)
- [Rankings](https://aur.archlinux.org/packages?K=nerd-fonts&SB=p)
- [Searching Homebrew](https://gist.github.com/davidteren/898f2dcccd42d9f8680ec69a3a5d350e)

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
- [Antigen](https://github.com/zsh-users/antigen) plugin manager
- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

### Examples

- [Managing dotfiles and ZSH with dotbot and antigen](https://josnun.com/posts/managing-dotfiles-and-zsh-with-dotbot-and-antigen/)
