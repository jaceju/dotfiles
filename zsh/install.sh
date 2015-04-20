#!/usr/bin/env bash
mv ~/.zshrc ~/.zshrc.bak
ln -s ~/.dotfiles/zshrc ~/.zshrc
mv ~/.oh-my-zsh/themes/taybalt.zsh-theme ~/.oh-my-zsh/themes/taybalt.zsh-theme.bak
ln -s ~/.dotfiles/zsh/themes/taybalt.zsh-theme ~/.oh-my-zsh/themes/taybalt.zsh-theme
