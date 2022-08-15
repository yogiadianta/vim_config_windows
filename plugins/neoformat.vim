"Neoformat Setting
nnoremap gs :Neoformat<Cr>
"Run Neoformat everytime doing safe file
augroup fmt
    autocmd!
    autocmd BufWritePre * undojoin | Neoformat
augroup END
let g:neoformat_enabled_python = ['autopep8']
