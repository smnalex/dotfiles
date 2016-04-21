#!/usr/bin/env bash
echo "===================="
echo "Intalling homebrew packages"

brew install tree
brew install wget

brew install nginx

brew install git

brew install macvim --with-cscope --with-lua --override-system-vim
brew install tmux

exit 0
