call pathogen#infect()

set nocompatible " Turn off shitty Vi antifeatures

syntax on
set number

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

" Change to the file's directory when opening it
set autochdir

" CtrlP
set wildignore=*/.git/*,*/.svn/*,*.swp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
let g:ctrlp_open_new_file='r'
let g:ctrlp_working_path_mode='r'
"let g:ctrlp_working_path_mode='c'
"let g:ctrlp_root_markers=['trunk']
let g:ctrlp_abbrev = {
            \ 'gmode': 'i',
            \ 'abbrevs': [
            \ {
            \         'pattern': ' ',
            \         'expanded': '.*\\'
            \     },
            \     {
            \         'pattern': 'ini',
            \         'expanded': '.*in.t.*'
            \     }
            \ ]
            \}
let g:ctrlp_regexp=1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_prompt_mappings = {'AcceptSelection("t")': ['<c-t>']}

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
":highlight NonText ctermfg=lightblue guifg=lightblue
:highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen

" Show whitespace characters
set list
set listchars=tab:·\ ,trail:$

" Show trailing whitespace:
:match ExtraWhitespace /\s\+$/

" Show trailing whitepace and spaces before a tab:
":match ExtraWhitespace /\s\+$\| \+\ze\t/

" Show tabs that are not at the start of a line:
":match ExtraWhitespace /[^\t]\zs\t\+/

" Show spaces used for indenting (so you use only tabs for indenting).
":match ExtraWhitespace /^\t*\zs \+/

" Show tabs
:match ExtraWhitespace /\t\+/

" Remove toolbar
:set guioptions-=T
set guioptions+=LlRrb
set guioptions-=LlRrb

filetype plugin on

"set wildmode=longest,list
set wildmode=longest:list,full

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

behave xterm

set background=dark        " The Solarized dark theme ("light" works too")

if has("gui_running")
  let g:solarized_contrast="high"
  let g:solarized_bold=1
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_win32")
    set guifont=Consolas:h12:cANSI
  endif
endif

colorscheme solarized

set bs=2 "enable backspace
set ruler

map <F12> :lnext<CR>
map <F11> :lprev<CR>

map <F6> :cnext<CR>
map <F5> :cprev<CR>
map <F4> :copen<CR>
map <F3> :cclose<CR>

set autoread

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
