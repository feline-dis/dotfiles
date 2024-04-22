#!/bin/bash

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc --keep-chsh
else
    echo "Oh My Zsh is already installed."
fi
