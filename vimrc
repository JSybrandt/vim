"Load pathogen, get help
execute pathogen#infect()
Helptags

"basic features
syntax on
filetype plugin indent on

"colorscheme
syntax enable
set background=dark
colorscheme solarized

"hotkeys
"for CtrlP file search
map <C-p> <ESC>:CtrlP 
"for NERD
map <C-n> <ESC>:NERDTree

"spellcheck
set spell spelllang=en_us
"fix spelling with \f
nnoremap <leader>f 1z=
"toggles spellcheck
nnoremap <leader>s :set spell!
