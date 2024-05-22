function! Css()
    set dictionary=~/.vim/dictionary/css.dict  
endfunction



function! Html()
    set dictionary=~/.vim/dictionary/html.dict  
    ab <buffer> stylesheet <link rel="stylesheet" href=""><esc>xphi
endfunction



function! Js()
    set dictionary=~/.vim/dictionary/js.dict  
    ab <buffer> function function  () {<cr><esc>kf(h
    nnoremap <buffer> ,ex :-1read /home/is/.vim/template/.express<cr>
    nnoremap <buffer> ,wc :-1read $HOME/.vim/template/.wcom<cr>f'a 
    nnoremap <buffer> ,lt :-1read $HOME/.vim/template/.lit<cr>
endfunction

function! Php()
  abbreviate <? <?php?><left><left>
endfunction


function! WindowNumber()
    let num=tabpagewinnr(tabpagenr())
      return num
endfunction
