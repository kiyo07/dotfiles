
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

"IME off in escaping from insert mode
"set imdisable
"set noimdisable
"set iminsert=0 imsearch=0
"set noimcmdline
"inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

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
imap <C-j> <esc>
set backspace=start,eol,indent

""mouse setting
set mouse=a

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
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'lervag/vim-latex'
NeoBundle 'itchyny/calendar.vim'

filetype plugin on
filetype indent on 

"plugin: calendar setting
let g:calendar_google_task = 1
let g:calendar_google_calendar = 1

