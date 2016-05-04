"Load pathogen, get help
execute pathogen#infect()
Helptags

"basic features
syntax on
filetype plugin indent on

"colorscheme
syntax enable
colorscheme Tomorrow
set ts=2 sw=2 et
let g:indent_guides_start_level=2

"for powerline fonts to appear in bar
let g:airline_powerline_fonts = 1

"hotkeys
"for CtrlP file search
map <C-p> <ESC>:CtrlP 
"for NERD
nmap <leader>ne :NERDTree<cr>

"spellcheck
set spell spelllang=en_us
"fix spelling with \f
nnoremap <leader>f 1z=<cr>
"toggles spellcheck
nnoremap <leader>s :set spell!<cr>
