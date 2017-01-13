call pathogen#infect()

set number
set autoindent
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" set tab aliases
cnoreabbrev tab2 set tabstop=2 shiftwidth=2 expandtab
cnoreabbrev tab4 set tabstop=4 shiftwidth=4 expandtab

" disable html tidy
let syntastic_mode_map = { 'passive_filetypes': ['html'] }

" NERDTree configs
let g:NERDTreeWinPos = "left"
" autostart NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * wincmd p

" devicons
set encoding=utf8
let g:webdevicons_enable = 1
let g:airline_powerline_fonts = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
