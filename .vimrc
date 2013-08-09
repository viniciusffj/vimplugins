syntax enable

set hidden

set background=dark
colorscheme solarized

filetype indent on
filetype plugin on

set tabstop=4
set t_Co=256
set number
set hlsearch
set incsearch
set smartindent
set autoindent
set ignorecase
set nowrap

set pastetoggle=<F2>

set cursorline
hi CursorLine ctermbg=236 cterm=none
autocmd InsertEnter * hi CursorLine ctermbg=none
autocmd InsertLeave * hi CursorLine ctermbg=236

noremap  <Up>     ""
noremap  <Down>   ""
noremap  <Left>   ""
noremap  <Right>  ""

noremap <expr> <silent> <Space><Space> ":vertical res<CR>:res<CR>"
noremap <Space>= <C-w>=
noremap <Space>o <C-w>o

"inoremap >< ></<C-x><C-o><ESC>2ba

map      <Enter>  :nohlsearch <Enter>

map      <C-w>l   :belowright vnew<Enter>
map      <C-w>h   :aboveleft vnew<Enter>
map      <C-w>j   :belowright new<Enter>
map      <C-w>k   :aboveleft new<Enter>

map      <C-l>    <C-w><Right>
map      <C-h>    <C-w><Left>
map      <C-j>    <C-w><Down>
map      <C-k>    <C-w><Up>

map      <C-_>    :tabnew <Enter>
map      <F12>    :tabnext <Enter>
map      <F11>    :tabprevious <Enter>

map      <F3>     :CommandT <Enter>
map      <F4>     :NERDTree<Enter>

function SetUseSpaces()
  set shiftwidth=2
  set tabstop=2
  set expandtab
  echo "Using spaces instead of tab"
endfunction

command! UseSpaces call SetUseSpaces()

function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

inoremap <Tab> <C-R>=InsertTabWrapper()<CR>
inoremap <S-Tab> <C-N>
