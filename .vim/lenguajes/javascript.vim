source /$HOME/.config/vim/.vim/lenguajes/autocompletar.vim
source /$HOME/.config/vim/.vim/editor/insertTemplate.vim

function! Js()
    set dictionary=~/.config/vim/.vim/dictionary/js.dict  
    "web component
    iab HTMLElement hTMLElement
    inoremap hTMLElement <esc>:call Template("wcom")<cr>
    iab console console.log(
    "get(){}
    iab get get (){<c-j>return this.getAttribute("<esc>A;<esc>kf{2hi
    "set(){}
    iab set set (val){<c-j>return this.setAttribute("<c-l>,val<esc>A;<esc>F"i
    call CierreAutomatico()
endfunction
