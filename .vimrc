"keyboard setting
set t_ku=OA
set t_kd=OB
set t_kl=OD
set t_kr=OC
noremap <BS> 
noremap! <BS> 
imap <C-j> <esc>
set backspace=start,eol,indent

"mouse setting
set mouse=a

"auto complete
set wildmenu wildmode=list:full

"syntax highlight setting
syntax on
set nohlsearch
set cursorline
let java_highlight_all=1
let java_highlight_debug=1
highlight Normal ctermbg=black ctermfg=grey
highlight StatusLine term=none cterm=none ctermfg=black ctermbg=grey
highlight CursorLine term=none cterm=none ctermfg=none ctermbg=darkgray

"indent width setting
set shiftwidth=4

"window setting
set number
set laststatus=2
set statusline=%F%r%h%=

set shell=c:/cygwin/bin/bash.exe	

set encoding=japan

"plugin manager
set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif

NeoBundle 'git://github.com/Shougo/neobundle.vim.git'
NeoBundle 'git://github.com/Shougo/vimproc.vim.git'
NeoBundle 'git://github.com/Shougo/neocomplcache.vim.git'
NeoBundle 'git://github.com/Shougo/neosnippet.vim.git'

filetype plugin on
filetype indent on 

colorscheme hybrid
