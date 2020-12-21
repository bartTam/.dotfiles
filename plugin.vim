" Install Plug
if empty(glob('$HOME/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo '$HOME/.local/share/nvim/site/autoload/plug.vim' --create-dir \
        'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
" Start neomake
Plug 'neomake/neomake'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'ciaranm/detectindent'
Plug 'amiorin/vim-project'
Plug 'dbmrq/vim-ditto'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'dhruvasagar/vim-table-mode'
Plug 'preservim/nerdtree'
Plug 'powerman/vim-plugin-AnsiEsc'
call plug#end()

call neomake#configure#automake('nrwi', 500)

" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>
