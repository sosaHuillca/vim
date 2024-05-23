
function! Template(tipo)
    exec ":read /home/arch/.config/vim/.vim/template/." . a:tipo
    " Subir una línea
    exec "normal! k"
    " Unir la línea actual con la siguiente
    exec "normal! J"
    exec "normal! bbyeL$hp2F'l"
        " Entrar en modo insertar
    exec "startinsert"
endfunction 

  function! Divs(tipo)
     let param = tolower(a:tipo)

    if param ==# 'a'
        return '<' . param . ' href="#">' . '</' . param . '>'
    else
        return '<' . param . '></' . param . '>'
    endif
endfunction

function! Class(tipo)
   let param = a:tipo
    "let param = tolower(param)
    exec "normal c <". param."></".param.">"
    exec "normal Vgu"
    exec "normal f>"
endfunction 
