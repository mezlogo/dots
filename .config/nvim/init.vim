set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

set listchars=eol:$,tab:>-,trail:~,space:.,extends:>,precedes:<
set list

set number

set nocompatible
filetype plugin on

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

