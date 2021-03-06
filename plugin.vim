" Install Plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo '~/.local/share/nvim/site/autoload/plug.vim' --create-dir \
        'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
" Start neomake
Plug 'neomake/neomake'
call plug#end()

call neomake#configure#automake('nrwi', 500)
