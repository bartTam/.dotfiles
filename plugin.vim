" Install Plug
if empty(glob('$HOME/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo '$HOME/.local/share/nvim/site/autoload/plug.vim' --create-dir \
        'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'amiorin/vim-project'
Plug 'ciaranm/detectindent'
Plug 'dbmrq/vim-ditto'
Plug 'dhruvasagar/vim-table-mode'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'nathanaelkane/vim-indent-guides'
" Start neomake
Plug 'neomake/neomake'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
call plug#end()

call neomake#configure#automake('nrwi', 500)

" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>
