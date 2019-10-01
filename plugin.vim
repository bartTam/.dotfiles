" Install Plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo '~/.local/share/nvim/site/autoload/plug.vim' --create-dir \
        'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
" Start neomake
Plug 'neomake/neomake'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
call plug#end()

call neomake#configure#automake('nrwi', 500)

set makeprg=srp_wsde2\ stop;\ make\ -C\ ~/srp_inc2\ SRP_BOARD=cp_wsde\ srp_spiral2_oe
