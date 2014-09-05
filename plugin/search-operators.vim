noremap  <Leader>a :set operatorfunc=AckOperator<CR>g@
vnoremap <Leader>a :<C-u>call AckOperator(visualmode())<CR>

function! AckOperator(type)
	if a:type ==# 'v'
		execute "normal! `<v`>y"
	elseif a:type ==# 'char'
		execute "normal! `[v`]y"
	else
		return
	endif

	silent execute "Ack " . shellescape(@@) . " ."
	copen
endfunction
