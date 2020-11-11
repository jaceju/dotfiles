#!/usr/bin/env bash
mv ~/.zshrc ~/.zshrc.bak
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/tmux-osx.conf ~/.tmux-osx.conf
mv ~/.oh-my-zsh/themes/taybalt.zsh-theme ~/.oh-my-zsh/themes/taybalt.zsh-theme.bak
ln -s ~/.dotfiles/zsh/themes/taybalt.zsh-theme ~/.oh-my-zsh/themes/taybalt.zsh-theme
