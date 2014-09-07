noremap  <Leader>a :set operatorfunc=<SID>AckOperator<CR>g@
vnoremap <Leader>a :<C-u>call <SID>AckOperator(visualmode())<CR>

function! s:AckOperator(type)
	let old_clipboard = @@

	if a:type ==# 'v'
		execute "normal! `<v`>y"
	elseif a:type ==# 'char'
		execute "normal! `[v`]y"
	else
		return
	endif

	silent execute "Ack " . shellescape(@@) . " ."
	copen

	let @@ = old_clipboard
endfunction
