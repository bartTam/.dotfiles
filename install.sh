#!/bin/bash

# Ensure that a directory exists
ensure_directory () {
	if [ ! -d $1 ]; then
		mkdir $1
	fi
}
PWD=$(pwd)
CONFIG_DIR=$HOME/.config
NVIM_DIR=$CONFIG_DIR/nvim
NVIM_CONFIG=$NVIM_DIR/config

# Install config files
ensure_directory "$CONFIG_DIR"

# Install vim and nvim config files
ensure_directory "$NVIM_DIR"
ensure_directory "$NVIM_CONFIG"
ln -sf $PWD/init.vim $NVIM_DIR/init.vim
ln -sf $PWD/.vimrc $HOME/.vimrc
for FILE in shared.vimrc tabs.vimrc python.vimrc plugin.vim 
do
    ln -sf $PWD/$FILE $NVIM_CONFIG/$FILE
done

# Install tmux config files
ln -sf $PWD/.tmux.conf $HOME/.tmux.conf
