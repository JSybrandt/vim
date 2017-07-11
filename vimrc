"Load pathogen, get help
execute pathogen#infect()
Helptags


"basic features
syntax on
filetype plugin indent on

"colorscheme
syntax enable
"colorscheme Tomorrow
set ts=2 sw=2 et
let g:indent_guides_start_level=2
"Side Numbers
set number
"highlight LineNr ctermfg=Grey ctermbg=Lightgrey

"error messages
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"

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
"inoremap <Esc> <Esc>:w! /tmp/vimBackup<CR>

"Tagbar toggle
nmap <F8> :TagbarToggle<CR>

"human readable linebreak
set nolist
set linebreak
"Disables bottom bar from giving whitespace errors
let g:airline#extensions#whitespace#enabled = 0

"Used for tab completion
set wildmode=longest,list,full
set wildmenu

let g:ale_sign_error = 'E>'
let g:ale_sign_warning = 'w-'
let g:ale_sign_column_always = 1


function CompileAndRun()
  :w
  if &filetype == "cpp"
    :AsyncRun g++ "%p" -o "%<"; ./"%<"
  elseif &filetype == "py"
    :AsyncRun python "%p"
  endif
endfunction

nmap <F5> :call CompileAndRun() <cr>

nmap <C-k> :ALEPreviousWrap <cr>
nmap <C-j> :ALENextWrap <cr>

nmap <C-L> :vertical resize +1 <cr>
nmap <C-H> :vertical resize -1 <cr>

:set cursorcolumn
:set cursorline
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=NONE guibg=black guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=NONE guibg=black guifg=NONE

" vimtex
let g:vimtex_compiler_latexmk = {'callback' : 0}

nmap <F9> :w <bar> !make <CR> <CR>
