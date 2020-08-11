" Use :help [OPTION] for more info

" Turn off shitty antifeatures that ensure compatablity with Vi
set nocompatible

" Basic functionality
syntax on
set ruler
set number

" Don't disable the mouse if it can be used
set mouse=a

" Change to the file's directory when opening it
set autochdir

" Enables filetype detection including indent files
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

" This changes command line completion to work more like a regular console
" The first tab autocompletes the longest common string, and the next tab will cycle
" through options
set wildmode=longest:list,full

" Automatically reload files changed by another editor
set autoread

" Case insensitive regex by default as long as the pattern is all lowercase (override with \c)
set ignorecase
set smartcase

"Sometimes noerrorbells is not enough to disable beepings
" http://vim.wikia.com/wiki/Disable_beeping
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" backspace works like a fucking backspace
set backspace=indent,eol,start

" Never interpret numbers with leading zeros as octal
" This is a useless feature that interferes with ctrl-A to increment
set nrformats-=octal

" Always show a status line
set laststatus=2