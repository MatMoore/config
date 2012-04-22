call pathogen#infect()

syntax on
set number
set noerrorbells

" Change to the file's directory when opening it
set autochdir

" Indent according the filetype
set autoindent
filetype indent on
set tabstop=2
set shiftwidth=2

" Briefly show the matching character when closing brackets
set showmatch

" Define some highlight groups
:highlight NonText ctermfg=lightblue guifg=lightblue
:highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen

" Show whitespace characters
set list
set listchars=tab:·\ ,trail:$

" Show trailing whitespace:
:match ExtraWhitespace /\s\+$/

" Show trailing whitepace and spaces before a tab:
:match ExtraWhitespace /\s\+$\| \+\ze\t/

" Show tabs that are not at the start of a line:
:match ExtraWhitespace /[^\t]\zs\t\+/

" Show spaces used for indenting (so you use only tabs for indenting).
:match ExtraWhitespace /^\t*\zs \+/

" Remove toolbar
:set guioptions-=T
set guioptions+=LlRrb
set guioptions-=LlRrb

if has('gui_running')
  colorscheme freya
else
  " something for console Vim
endif

filetype plugin on

set wildmode=longest,list

set foldmethod=indent
set foldnestmax=10
set nofoldenable

let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=0
let g:syntastic_check_on_open=1
let g:syntastic_echo_current_error=1
let g:syntastic_enable_balloons = 1
let g:syntastic_enable_highlighting = 1
let g:syntastic_mode_map = { 'mode': 'active'}
let g:syntastic_python_checker = 'pylint'
