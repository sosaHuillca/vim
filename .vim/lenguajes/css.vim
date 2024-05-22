source /$HOME/.config/vim/.vim/lenguajes/autocompletar.vim
function! Css()
    set dictionary=~/.config/vim/.vim/dictionary/css.dict  
    iab var var(--
    call CierreAutomatico()
endfunction
