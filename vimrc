syntax enable
colorscheme monokai-phoenix
set termguicolors

set encoding=utf-8

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
"Enable lists
set list
"Enable the use of the mouse
if has('mouse')
"  set mouse=a
endif

"Prevents backup before overwriting a file 
set nobackup
set nowritebackup
set noswapfile

"Cut, Paste, Copy
"vmap <C-x> d
"vmap <C-v> p
"vmap <C-c> y

"Disable history and bookmarks in .netrwhist
let g:netrw_dirhistmax = 0

"Netrw Configuration
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20

"Create a ProjectDrawer
aug ProjectDrawer
  au!
  au VimEnter * :Vexplore
aug end

"Close vim if netrw is last and only buffer
aug netrwClose
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw"|q|endif
aug END

"Summary:
"    A buffer is the in-memory text of a file.
"    A window is a viewport on a buffer.
"    A tab page is a collection of windows.
