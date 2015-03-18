
""basic setting
set noswapfile
set autoread
set showmode
set showcmd
set showmatch
set wildmenu
set incsearch
set hlsearch

"ctrl+p -> paste the content of clipboard
set clipboard+=unnamed
set clipboard=unnamed
imap <C-p>  <ESC>"*pa

filetype plugin on

""IME setting (for MacVim)
let IM_CtrlMode = 4
inoremap <silent> <C-j> <C-^><C-r>=IMState('FixMode')<CR>

""indent setting
set autoindent
set tabstop=4

""window setting
set laststatus=2
set number
set statusline=%F%r%h%=
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid
"miximizing gui window size
if has('gui_macvim')
  set lines=60 columns=200
  set guioptions-=T
endif

""keyboard setting
set t_ku=OA
set t_kd=OB
set t_kl=OD
set t_kr=OC
noremap <BS> 
noremap! <BS> 
"imap <C-j> <esc>
set backspace=start,eol,indent

""mouse setting
set mouse=a

""font setting
set guifont=Osaka-Mono:h14

""syntax highlight setting
syntax on
set nohlsearch
set cursorline
let java_highlight_all=1
let java_highlight_debug=1
"highlight Normal ctermbg=black ctermfg=grey
highlight StatusLine term=none cterm=none ctermfg=black ctermbg=grey
highlight CursorLine term=none cterm=none ctermfg=none ctermbg=darkgray

""indent width setting
set shiftwidth=4

"set shell=c:/cygwin/bin/bash.exe

""encoding setting
set encoding=japan
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

""auto complete
set wildmenu wildmode=list:full

"dylib setting
let $PYTHON_DLL = "usr/local/Cellar/python/2.7.9/Frameworks/Python.framework/Versions/2.7/lib/libpython2.7.dylib"

""plugin manager
set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif

NeoBundle 'git://github.com/Shougo/neobundle.vim.git'
"NeoBundle 'git://github.com/Shougo/neocomplcache.vim.git'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'lervag/vim-latex'

"plugin: goolgle calendar
NeoBundle 'itchyny/calendar.vim'
let g:calendar_google_task = 1
let g:calendar_google_calendar = 1

"plugin: japanese ime control
NeoBundle 'fuenor/im_control.vim'

"plugin: evernote on vim
NeoBundle 'kakkyz81/evervim'
let g:evervim_devtoken='S=s13:U=15d509:E=1534ba7e19b:C=14bf3f6b270:P=1cd:A=en-devtoken:V=2:H=5f09f1c264a6878144902d9ea0d0f7b9'

"plugin: white space management
NeoBundle 'bronson/vim-trailing-whitespace'

"plugin: code searching ag (the_silver_searcher)
NeoBundle 'rking/ag.vim'

"plugin: git controll
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'

filetype plugin on
filetype indent on

