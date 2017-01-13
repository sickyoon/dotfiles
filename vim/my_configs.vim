call pathogen#infect()

set number
set tabstop=4 shiftwidth=4 expandtab
set autoindent

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
set guifont=DroidSansMonoForPowerline\ Nerd\ Font:h11
let g:webdevicons_enable = 1
let g:airline_powerline_fonts = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
