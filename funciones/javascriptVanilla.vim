let s:consoleExecuted = {}

function! Variables()
    let lineNumber = line('.')
    if !has_key(s:consoleExecuted, lineNumber)
        execute 'normal! a  = ;'
        call feedkeys("F=hi")
        let s:consoleExecuted[lineNumber] = 1
    endif
endfunction


function! FuncionArrow()
    execute 'normal! a => {' . "\n" . '}'
    normal! O
    call feedkeys("i")
    call feedkeys("\<Tab>")
endfunction

function! FuncionNormal()
    execute 'normal! a () {' . "\n" . '}'
    "call feedkeys("i")
    "call feedkeys("\<Tab>")
    call feedkeys("O")
endfunction

function! ConsoleNormal()
    let lineNumber = line('.')
    if !has_key(s:consoleExecuted, lineNumber)
        execute 'normal! a.log("");'
        normal! 2hi
        let s:consoleExecuted[lineNumber] = 1
    endif
endfunction

function! AutoCommands()
  if expand('%:e') == 'html'  " Cambia 'txt' por la extensión deseada
    execute "normal! :-1read $HOME/.vim/template/.web\<cr>/title\<cr>f>"
    " Secuencia de comandos para archivos .txt
    " Agrega aquí los comandos que deseas ejecutar para los archivos .txt
  elseif expand('%:e') == 'php'  " Cambia 'cpp' por la extensión deseada
    execute "normal! :-1read $HOME/.vim/template/.php\<cr>"
    " Secuencia de comandos para archivos .cpp
    " Agrega aquí los comandos que deseas ejecutar para los archivos .cpp
  endif
endfunction

function! V()
  execute 'vertical resize' . (strdisplaywidth(getline(FindLongestLine()))+5)
endfunction

function! S()
    execute 'resize' . (line('$')+2)
endfunction

