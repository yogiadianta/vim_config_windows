"Telescope Setting

"nnoremap <C-p> :Telescope find_files layout_config={"prompt_position":"top"} <CR> <esc>
"nnoremap <C-p> :Telescope find_files initial_mode=normal layout_config={"prompt_position":"bottom"} <CR>
nnoremap <C-p> :Telescope find_files layout_config={"prompt_position":"bottom"} <CR>
nnoremap <C-l> telescope.actions.layout.toggle_preview(true)
nnoremap gc telescope.actions.layout.toggle_preview(false)
"autocmd telescope.setup()
"call telescope#asd()
