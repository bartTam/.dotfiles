source $HOME/.config/nvim/config/shared.vimrc
source $HOME/.config/nvim/config/plugin.vim
if !empty(glob('$HOME/.config/nvim/config/specific.vim'))
    source $HOME/.config/nvim/config/specific.vim
endif

