"Purify Setting

let g:purify_bold = 0        " default: 1
let g:purify_italic = 0      " default: 1
let g:purify_underline = 0   " default: 1
let g:purify_undercurl = 0   " default: 1
let g:purify_inverse = 0     " default: 1
let g:purify_override_colors = {
    ""\ 'pink':  { 'gui': '#FF87FF', 'cterm': '213' },
    ""\ 'green': { 'gui': '#5FD700', 'cterm': '76' }
\ }
syntax on " This is required
set background=dark
colorscheme purify
