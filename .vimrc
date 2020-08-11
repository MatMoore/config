set nocompatible " Turn off shitty Vi antifeatures

filetype plugin on
syntax on
set number

" Change to the file's directory when opening it
set autochdir

" Indent according the filetype
filetype indent on

" Space indenting
set tabstop=4
set shiftwidth=4
set expandtab

" Briefly show the matching character when closing brackets
set showmatch

" Define some highlight groups
:highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen

" Show whitespace characters
set list
set listchars=tab:·\ ,trail:$

" Show trailing whitespace:
:match ExtraWhitespace /\s\+$/

" Show tabs
:match ExtraWhitespace /\t\+/

" Remove toolbar in gvim/macvim
:set guioptions-=T
set guioptions+=LlRrb
set guioptions-=LlRrb

set wildmode=longest:list,full

set foldmethod=indent
set foldnestmax=10
set nofoldenable

set bs=2 "enable backspace
set ruler

set autoread

set ignorecase
set smartcase
set mouse=a

"Sometimes noerrorbells is not enough to disable beepings
" http://vim.wikia.com/wiki/Disable_beeping
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" backspace works like a fucking backspace
set backspace=indent,eol,start

set nrformats-=octal

set laststatus=2
set ttimeoutlen=50