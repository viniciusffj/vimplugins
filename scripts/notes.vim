" Set vim as a Note app

" Settings
let g:notes_directories = [ '~/Dropbox/Notes' ]
let g:notes_suffix = '.txt'
let g:notes_title_sync = 'rename_file'
let g:auto_save_in_insert_mode = 0
let g:auto_save = 1

" Start up
set nonumber
iabbrev T TODO
noremap <Leader>td :s/TODO/DONE/<CR>yy}P``dd
noremap <Leader>tu :s/DONE/TODO/<CR>dd{jp
noremap <Leader>tC :g/\CDONE/d<CR>
noremap <Leader>tt gg/Tomorrow:<CR>jd}{P
noremap <Leader>tw dd/Tomorrow:<CR>}P
noremap <Leader>tU dd/Upcoming:<CR>}P
noremap <Leader>ti ^iTODO <Esc>
noremap <C-j>      ddp
noremap <C-k>      ddkP

silent RecentNotes
