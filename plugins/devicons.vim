"DevIcons Setting

" Loading the plugins
let g:webdevicons_enable = 1

" Add icons to nerdtree
let g:webdevicons_enable_nerdtree = 1

" remove the icons bracket in nerdtree
let g:webdevicons_conceal_nerdtree_brackets = 1

" Add space after icons
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
"let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" adding to vim-airline's tabline
"let g:webdevicons_enable_airline_tabline = 1
" enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1

" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1

" after resource, fix xyntax matching issue (conceal brackets)
if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif

" for fixing nerdtree icons color
highlight! link NERDTreeFlags NERDTreeDir
