set nocompatible

syntax on
:colorscheme evening

filetype on
filetype plugin on
filetype indent on

set number
set ruler
set wrap
set scrolloff=5
set guioptions=T

set ignorecase
set smartcase
set incsearch
set hlsearch


" jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

