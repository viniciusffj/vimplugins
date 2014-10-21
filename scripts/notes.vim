" Set vim as a Note app

" Settings
let g:notes_directories = [ '~/Dropbox/Notes' ]
let g:notes_suffix = '.txt'
let g:notes_title_sync = 'rename_file'

" Plugins
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
call plug#end()

if !exists('g:loaded_notes')
	PlugInstall
	silent quit!
endif

" Start up
set nonumber
iabbrev T TODO
noremap <Leader>td :s/TODO/DONE/<CR>yy}P``dd
noremap <Leader>tu :s/DONE/TODO/<CR>dd{jp
noremap <Leader>tC :g/\CDONE/d<CR>
noremap <C-j>      ddp
noremap <C-k>      ddkP

AirlineToggle
silent RecentNotes
