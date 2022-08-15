" Change the mapping for trigger prettier 
nnoremap <Leader>py <Plug>(Prettier)
nnoremap <Leader>p :Prettier<CR>

" Enable Prettier autoformat
"let g:prettier#autoformat = 1
"let g:prettier#autoformat_require_pragma = 0

" Disable parse errors quickfix 
"let g:prettier#quickfix_enabled = 0

" Run Prettier after changing or leaving insert mod 
"autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync

" Prettier follow default tabwidth
"let g:prettier#config#tab_width = 'auto'
