syntax enable

set background=dark
colorscheme solarized

filetype indent on

set t_Co=256
set number
set hlsearch
set incsearch
set smartindent    
set autoindent
set ignorecase
set nowrap

set cursorline
hi CursorLine ctermbg=236 cterm=none

noremap  <Up>    ""
noremap  <Down>  ""
noremap  <Left>  ""
noremap  <Right> ""
map      <C-w>l  :belowright vnew<Enter>
map      <C-w>h  :aboveleft vnew<Enter>
map      <C-w>j  :belowright new<Enter>
map      <C-w>k  :aboveleft new<Enter>
map      <C-l>   <C-w><Right>
map      <C-h>   <C-w><Left>
map      <C-j>   <C-w><Down>
map      <C-k>   <C-w><Up>
map      <F3>    :CommandT <Enter>
map      <F4>    :NERDTree<Enter>

set pastetoggle=<F2>
