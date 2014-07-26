call pathogen#infect()

set nocompatible " Turn off shitty Vi antifeatures

syntax on
set number

" Change to the file's directory when opening it
set autochdir

" Indent according the filetype
filetype indent on

" tab indenting
"set autoindent
"set tabstop=2
"set shiftwidth=2

" space indenting :(
set tabstop=4
set shiftwidth=4
set expandtab

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
"let g:syntastic_python_checker = 'pylint'
"
set background=dark        " The Solarized dark theme ("light" works too")
colorscheme solarized

" http://stackoverflow.com/questions/18158772/how-to-add-c11-support-to-syntastic-vim-plugin
let g:syntastic_cpp_compiler_options = ' -std=c++11'
"let g:syntastic_python_pylint_exe = '/usr/bin/pylint'

let g:syntastic_python_pylint_exe = '/usr/local/bin/pylint'
"let g:syntastic_python_pylint_options = '--msg-template="{path}:{line}: [{msg_id}] {msg}" -r n'
"let g:syntastic_python_pylint_options = '--msg-template="{path}:{line}: [{msg_id}, {obj}] {msg}" -r n'
"let g:syntastic_python_pylint_tail = '| sed -r "s/\x1B\[[0-9;]*[mGK]//g" | sed "s/, \]/\]/"'

set paste

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

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
