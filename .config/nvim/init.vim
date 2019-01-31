set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

set listchars=eol:$,tab:>-,trail:~,space:.
set list
hi NonText ctermfg=yellow guifg=yellow70

set number

set nocompatible
filetype plugin on

let g:netrw_dirhistmax = 0
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20

"augroup ProjectDrawer
  "autocmd!
  "autocmd VimEnter * :Vexplore
"augroup END

