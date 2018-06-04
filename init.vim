set shiftwidth=4
set tabstop=4
set expandtab

call plug#begin()
Plug 'neomake/neomake'
call plug#end()

call neomake#configure#automake('nrwi', 500)
