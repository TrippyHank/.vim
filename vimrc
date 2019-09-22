syntax enable
colorscheme monokai-phoenix
set termguicolors

"Encoding format
set encoding=utf-8

"Override vim's italic codes.
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" This allows buffers to be hidden if you've modified a buffer.
set hidden

"Copy indent from current line when starting a new line
set autoindent
"Number of spaces that a <Tab> in the file counts for.
set tabstop=2 shiftwidth=2 expandtab
"Show the line and column number of the cursor position
set ruler
"Enable line numbering
set number
"Show (partial) command in the last line of the screen.
set showcmd
"Enable the use of the mouse
if has('mouse')
"  set mouse=a
endif

"Prevents backup before overwriting a file 
set nobackup
set nowritebackup
set noswapfile

"Disable history and bookmarks in .netrwhist
let g:netrw_dirhistmax = 0

"Netrw Configuration
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20

"Define the NetRW autocmd group
aug NetRW
  au!
  "On VimEnter, open local-directory browser with |:leftabove| vertical splitting.
  au VimEnter * :Vexplore
  "On WinEnter, close Vim if netrw is the last and only buffer
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw"|q|endif
aug END
