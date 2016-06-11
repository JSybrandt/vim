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
"Side Numbers
set number
highlight LineNr ctermfg=Grey ctermbg=Lightgrey

"error messages
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


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
"save a temp every esc
inoremap <Esc> <Esc>:w! /tmp/vimBackup<CR>

"Tagbar toggle
nmap <F8> :TagbarToggle<CR>

"human readable linebreak
set nolist
set linebreak
"Disables bottom bar from giving whitespace errors
let g:airline#extensions#whitespace#enabled = 0
