
function! Template(tipo)
    if a:tipo == "wcom"
      exec ":read /home/arch/.config/vim/.vim/template/." . a:tipo
      " Subir una línea
      exec "normal! k"
      " Unir la línea actual con la siguiente
      exec "normal! J"
      " Condición para tipo 'wcom'
        exec "normal! bbyeL$hp2F'l"
        " Entrar en modo insertar
      exec "startinsert"
    " Condición para tipo 'js'
    elseif a:tipo == "web"
        " Agrega aquí lo que quieras hacer para 'js'
      exec "-1read /home/arch/.config/vim/.vim/template/." . a:tipo
      exec "normal! 3j2f>"
      exec "startinsert"
    endif
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
