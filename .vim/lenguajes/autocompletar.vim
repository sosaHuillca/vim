function! CierreAutomatico()
    inoremap {<c-j> {}<esc>i<cr><esc>O
    inoremap ( ()<esc>i
    inoremap () ()
    inoremap '' ''<esc>i
    inoremap "" ""<esc>i
endfunction
