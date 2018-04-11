call pathogen#infect()

set number
set autoindent
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set nofoldenable

" set tab aliases
cnoreabbrev tab2 set tabstop=2 shiftwidth=2 expandtab
cnoreabbrev tab4 set tabstop=4 shiftwidth=4 expandtab

" disable html tidy
let syntastic_mode_map = { 'passive_filetypes': ['html'] }

" NERDTree configs
let g:NERDTreeWinPos = "left"

