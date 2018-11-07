set term=screen-256color

"Load pathogen, get help
execute pathogen#infect()
Helptags


"basic features
syntax on
filetype plugin indent on
colorscheme night
set softtabstop=2 tabstop=2 shiftwidth=2 expandtab
autocmd FileType python set softtabstop=2 tabstop=2 shiftwidth=2 expandtab

set number
set spell spelllang=en_us

"error messages
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"for powerline fonts to appear in bar
let g:airline_powerline_fonts = 1

nmap <leader>ne :NERDTree<cr>

"toggles spellcheck
nnoremap <leader>s :set spell!<cr>

"human readable linebreak
set nolist
set linebreak

"Disables bottom bar from giving whitespace errors
let g:airline#extensions#whitespace#enabled = 0

"Used for tab completion
set wildmode=longest,list,full
set wildmenu

" Crosshairs
:set cursorcolumn
:set cursorline
highlight CursorLine   cterm=NONE ctermbg=235 ctermfg=NONE guibg=black guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=235 ctermfg=NONE guibg=black guifg=NONE

:command -complete=file -nargs=1 CppV :tabe <args>.cpp <bar> :vsplit <args>.h
:command -complete=file -nargs=1 CppH :tabe <args>.cpp <bar> :split <args>.h <bar> :resize 20 <cr>
:command W :w
:command Wq :wq
:command WQ :wq

" makes my spelling mistakes easier to identify using the traditional means
hi clear SpellBad
hi SpellBad term=undercurl cterm=undercurl ctermfg=9
