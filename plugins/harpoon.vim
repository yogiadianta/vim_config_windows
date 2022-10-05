" Open harpoon ui list
nnoremap <A-p> :lua require("harpoon.ui").toggle_quick_menu()<CR>

" add this file and this line to harpoon list
nnoremap <A-b> :lua require("harpoon.mark").add_file() <CR>

" Move to file in list
nnoremap <A-1> :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <A-2> :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <A-3> :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <A-4> :lua require("harpoon.ui").nav_file(4)<CR>
nnoremap <A-5> :lua require("harpoon.ui").nav_file(5)<CR>
nnoremap <A-6> :lua require("harpoon.ui").nav_file(6)<CR>
nnoremap <A-7> :lua require("harpoon.ui").nav_file(7)<CR>

" Prev and next harpoon
nnoremap <leader>j :lua require("harpoon.ui").nav_next() <CR>
nnoremap <leader>k :lua require("harpoon.ui").nav_prev() <CR>

" Go to terminal
nnoremap <leader>1 :lua require("harpoon.term").gotoTerminal(1) <CR>
nnoremap <leader>2 :lua require("harpoon.term").gotoTerminal(2) <CR>
nnoremap <leader>3 :lua require("harpoon.term").gotoTerminal(3) <CR>
nnoremap <leader>4 :lua require("harpoon.term").gotoTerminal(4) <CR>
nnoremap <leader>5 :lua require("harpoon.term").gotoTerminal(5) <CR>

" Send some command to terminal "need to make it more dynamic"
command! -nargs=* Xyz :call echo('<q-args>')

"command! -nargs=* Masd :call lua require("harpoon.term").gotoTerminal(<q-args>)
