"Telescope Setting

"nnoremap <C-p> :Telescope find_files layout_config={"prompt_position":"top"} <CR> <esc>
"nnoremap <C-p> :Telescope find_files initial_mode=normal layout_config={"prompt_position":"bottom"} <CR>
"nnoremap <C-p> :Telescope find_files layout_config={"prompt_position":"bottom"} <CR>
nnoremap <C-p> :lua require('telescope.builtin').find_files({ file_ignore_patterns = { '.git', 'node_modules' } })<CR>
nnoremap <C-l> telescope.actions.layout.toggle_preview(true)
nnoremap gc telescope.actions.layout.toggle_preview(false)
"autocmd telescope.setup()
"call telescope#asd()

"let g:telescope_find_ignore = ['node_modules\*', '.git\*']
"file_ignore_patterns = {".git/", ".cache", "%.o", "%.a", "%.out", "%.class", "%.pdf", "%.mkv", "%.mp4", "%.zip"},

"let g:telescope_defaults = {'file_ignore_patterns': g:telescope_find_ignore}
"let g:telescope_defaults = {'file_ignore_patterns': g:telescope_find_ignore}
""call telescope#setup({'defaults' : {'file_ignore_patterns': ['.git', 'node_modules'],}})
"lua require('telescope.builtin').find_files({
  "find_command = { 'rg', '--files', '--hidden', '--iglob', '!.git', '--iglob', '!node_modules' },
"})}

"call telescope#setup({'defaults': {'file_ignore_patterns': ['.git', 'node_modules'], " Add the patterns to ignore}})
