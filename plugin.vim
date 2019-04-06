" Start neomake
call plug#begin()
Plug 'neomake/neomake'
call plug#end()

call neomake#configure#automake('nrwi', 500)
