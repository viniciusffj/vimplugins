" Ack {{{
noremap  <Leader>a :set operatorfunc=<SID>AckOperator<CR>g@
vnoremap <Leader>a :<C-u>call <SID>AckOperator(visualmode())<CR>

function! s:AckOperator(type)
	let word = <SID>GetWord(a:type)
	if word == ''
		return
	endif

	silent set hlsearch
	let @/= '\C' . word

	silent execute "Ack " . shellescape(word) . " . --ignore-file='is:tags'"
	redraw
endfunction
" }}}

" Common functions {{{
function! s:GetWord(type)
	let old_clipboard = @@

	if a:type ==# 'v'
		execute "normal! `<v`>y"
	elseif a:type ==# 'char'
		execute "normal! `[v`]y"
	else
		return
	endif

	let ret = @@
	let @@ = old_clipboard

	return ret
endfunction
" }}}
