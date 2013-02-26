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
map      <C-l>   :belowright vnew<Enter>
map      <C-h>   :aboveleft vnew<Enter>
map      <C-j>   :belowright new<Enter>
map      <C-k>   :aboveleft new<Enter>
map      <S-l>   <C-w><Right>
map      <S-h>   <C-w><Left>
map      <S-j>   <C-w><Down>
map      <S-k>   <C-w><Up>
map      <F3>    :CommandT <Enter>
map      <F4>    :NERDTree<Enter>

set pastetoggle=<F2>
