"NerdTree Setting

nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <leader>w :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>
"Start NerdTree when vim start
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Also open nerdtree in new tab
"autocmd BufWinEnter * NERDTreeMirror

"ignore file node_modules in nerdtree
let g:NERDTreeIgnore = ['^node_modules$']

"remove line number in nerdtree
let NERDTreeShowLineNumbers=0
