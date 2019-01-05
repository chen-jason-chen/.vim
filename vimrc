" Vim config --------------------------------

" Pathogen

execute pathogen#infect()

" Basic settings

filetype plugin indent on
syntax on

if has("autocmd") " Remember line upon closing and reopening
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set encoding=utf-8
set showcmd
set number
set relativenumber
set so=999 " fix cursor to centre of screen
set textwidth=120

set backspace=indent,eol,start
" 4 space indentation
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Airline

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
set laststatus=2

" Vimtex
let g:vimtex_view_method = 'zathura'

" Syntastic
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -Wall'

" Aesthetics

colorscheme tango2
hi LineNr ctermfg=DarkGrey
hi MatchParen cterm=none ctermbg=18 ctermfg=blue
hi VertSplit ctermbg=236 ctermfg=236
hi SignColumn ctermbg=236
hi SpellBad ctermbg=160 ctermfg=255

" Mappings

inoremap {<CR> {<CR>}<C-o>O

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap gk :bn<CR>
nnoremap gj :bp<CR>
nnoremap gd :bd<CR>

nnoremap L :bnext<CR>
nnoremap H :bprevious<CR>
nnoremap bc :bd<CR>
nnoremap b! :bd!<CR>

" Plugin Mappings
nnoremap <Leader>n :NERDTreeTabsToggle<CR>
