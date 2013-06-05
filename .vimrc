"keyboard setting
set t_ku=OA
set t_kd=OB
set t_kl=OD
set t_kr=OC
noremap <BS> 
noremap! <BS> 
imap <C-j> <esc>
set backspace=start,eol,indent

"encoding
"set encoding=utf-8
"set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8
" •¶šƒR[ƒh‚Ì©“®”F¯
if &encoding !=# 'utf-8'
  set encoding=japan
  set fileencoding=japan
endif
if has('iconv')
  let s:enc_euc = 'euc-jp'
  let s:enc_jis = 'iso-2022-jp'
  " iconv‚ªeucJP-ms‚É‘Î‰‚µ‚Ä‚¢‚é‚©‚ğƒ`ƒFƒbƒN
  if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'eucjp-ms'
    let s:enc_jis = 'iso-2022-jp-3'
  " iconv‚ªJISX0213‚É‘Î‰‚µ‚Ä‚¢‚é‚©‚ğƒ`ƒFƒbƒN
  elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'euc-jisx0213'
    let s:enc_jis = 'iso-2022-jp-3'
  endif
  " fileencodings‚ğ\’z
  if &encoding ==# 'utf-8'
    let s:fileencodings_default = &fileencodings
    let &fileencodings = s:enc_jis .','. s:enc_euc .',cp932'
    let &fileencodings = &fileencodings .','. s:fileencodings_default
    unlet s:fileencodings_default
  else
    let &fileencodings = &fileencodings .','. s:enc_jis
    set fileencodings+=utf-8,ucs-2le,ucs-2
    if &encoding =~# '^\(euc-jp\|euc-jisx0213\|eucjp-ms\)$'
      set fileencodings+=cp932
      set fileencodings-=euc-jp
      set fileencodings-=euc-jisx0213
      set fileencodings-=eucjp-ms
      let &encoding = s:enc_euc
      let &fileencoding = s:enc_euc
    else
      let &fileencodings = &fileencodings .','. s:enc_euc
    endif
  endif
  " ’è”‚ğˆ•ª
  unlet s:enc_euc
  unlet s:enc_jis
endif
" “ú–{Œê‚ğŠÜ‚Ü‚È‚¢ê‡‚Í fileencoding ‚É encoding ‚ğg‚¤‚æ‚¤‚É‚·‚é
if has('autocmd')
  function! AU_ReCheck_FENC()
    if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
      let &fileencoding=&encoding
    endif
  endfunction
  autocmd BufReadPost * call AU_ReCheck_FENC()
endif
" ‰üsƒR[ƒh‚Ì©“®”F¯
set fileformats=unix,dos,mac
"  ‚Æ‚©›‚Ì•¶š‚ª‚ ‚Á‚Ä‚àƒJ[ƒ\ƒ‹ˆÊ’u‚ª‚¸‚ê‚È‚¢‚æ‚¤‚É‚·‚é
if exists('&ambiwidth')
  set ambiwidth=double
endif


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
