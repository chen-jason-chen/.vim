" Vim config --------------------------------

" Pathogen

execute pathogen#infect()

" Basic settings

set background=dark
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

set backspace=indent,eol,start
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Airline

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
set laststatus=2

" YCM

let g:loaded_youcompleteme=1

" Aesthetics

colorscheme peachpuff
hi LineNr ctermfg=DarkGrey
hi MatchParen cterm=none ctermbg=18 ctermfg=blue
hi VertSplit ctermbg=236 ctermfg=236
hi SignColumn ctermbg=236
hi SpellBad ctermbg=160 ctermfg=255

" Mappings

inoremap {<CR> {<CR>}<C-o>O

nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap gk :bn<CR>
nnoremap gj :bp<CR>
nnoremap gd :bd<CR>

" Plugin Mappings
nnoremap <Leader>n :NERDTreeTabsToggle<CR>
