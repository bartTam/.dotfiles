source $HOME/.config/nvim/config/tabs.vimrc
source $HOME/.config/nvim/config/format.vimrc
" source $HOME/.config/nvim/config/python.vimrc

set undofile
set undodir=/tmp/

" http://cscope.sourceforge.net/cscope_maps.vim
if has('cscope')
    set cscopetag cscopeverbose

    if has('quickfix')
        set cscopequickfix=s-,c-,d-,i-,t-,e-
    endif

    cnoreabbrev csa cs add
    cnoreabbrev csf cs find
    cnoreabbrev csk cs kill
    cnoreabbrev csr cs reset
    cnoreabbrev css cs show
    cnoreabbrev csh cs help

    if filereadable("cscope.out")
        cs add cscope.out
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB $CSCOPE_DIR
    endif

    " Ctrl-leader to do search
    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
    " Ctrl-W Ctrl-leader to do search in horizontal split
    nmap <C-W><C-\>s :scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-W><C-\>g :scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-W><C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-W><C-\>t :scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-W><C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-W><C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-W><C-\>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-W><C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR>
    " Ctrl-W 2xCtrl-leader to do search in vertical split
    nmap <C-W><C-\><C-\>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-W><C-\><C-\>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-W><C-\><C-\>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-W><C-\><C-\>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-W><C-\><C-\>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-W><C-\><C-\>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-W><C-\><C-\>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-W><C-\><C-\>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
endif
