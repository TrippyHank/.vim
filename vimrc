syntax enable
colorscheme monokai-phoenix
set termguicolors

set encoding=utf-8

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
  set mouse=v
endif

"Prevents backup before overwriting a file 
set nobackup
set nowritebackup
set noswapfile

"Cut, Paste, Copy
"vmap <C-x> d
"vmap <C-v> p
"vmap <C-c> y

"Netrw Configuration
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20

"Create a ProjectDrawer
aug ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
aug end
