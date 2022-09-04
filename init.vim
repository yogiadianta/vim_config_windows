" Configuraton for NeoVim Windows

" map 'jk' and 'kj' to escape key in insert and command mode
inoremap jk <esc>
cnoremap jk <esc>

" Copy selected visual to clipboard
vnoremap y "+y
nnoremap yy "+yy

" Paste from clipboar
nnoremap p "+gp

" escape from insert mode in terminal
tnoremap jk <C-\><C-N>

" escape from insert mode in terminal mode 
cnoremap jk <C-\><C-N>

let mapleader = ","

" Map ,, to refresh vimrc
map <leader><leader> :source % <CR>
map <leader>so :source C:/Users/Yogi/AppData/Local/nvim/init.vim<CR>

" set every tab equal with 4 spaces and scrolloff 8
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set scrolloff=10
set splitbelow
set cmdheight=2
"set guicursor="|"
set nowrap
set number
set relativenumber
set nohlsearch
set ignorecase
set incsearch
set signcolumn=no
set colorcolumn=150
set encoding=UTF-8
set nobackup
set nowritebackup
set splitright
noswapfile
hi ColorColumn guibg=lightgrey ctermbg=darkgrey 

" Indent make visual mode stay after indnenting
nnoremap > >>
nnoremap < <<
vnoremap > >gv
vnoremap < <gv
vnoremap <tab> >gv
nnoremap ge >a{j

" Looking for remove all indent and do all indent automatically
" :%le and =gg
" :%le to remove all indent aka :left function
" =gg do all indent from top to buttom

" Set tab width 2 for css and html only file autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType tmpl setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType json setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType js setlocal tabstop=2 shiftwidth=2 softtabstop=2

" Make toggle ga for opening and closing terminal in Vim
nnoremap ga :split <CR> :resize -8 <CR> :terminal<CR>
tnoremap ga <C-\><C-n>:q!<CR>
inoremap ga <C-\><C-n>:q!<CR>

nnoremap gn :vsplit <CR> :terminal <CR>

" map to navigate from windows to another window with ALT+
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-\><C-N><C-w>h
nnoremap <A-j> <C-\><C-N><C-w>j
nnoremap <A-k> <C-\><C-N><C-w>k
nnoremap <A-l> <C-\><C-N><C-w>l

" map to resize window 
nnoremap <A-a> <C-w>>2
nnoremap <A-s> <C-w>-2
nnoremap <A-w> <C-w>+2
nnoremap <A-d> <C-w><2

" map change tab
nnoremap <A-L> :tabn<CR>
nnoremap <A-H> :tabp<CR>
 
" change tab order
nnoremap <A-,> :tabmove -1<CR>
nnoremap <A-.> :tabmove +1<CR>

" I am not used to macro yet, so i just remap it to move to end of line
nnoremap q $

" Plugins Section
source C:/Users/Yogi/AppData/Local/nvim/plugins/lists.vim
"source ./plugins/lists.vim

"Purify
source C:/Users/Yogi/AppData/Local/nvim/plugins/purify.vim

" Gruvbox
"source C:/Users/Yogi/AppData/Local/nvim/plugins/gruvbox.vim

"Emmet
source C:/Users/Yogi/AppData/Local/nvim/plugins/emmet.vim

" Airline
source C:/Users/Yogi/AppData/Local/nvim/plugins/airline.vim

"Coc Completion
source C:/Users/Yogi/AppData/Local/nvim/plugins/coc.vim

" Telescope
source C:/Users/Yogi/AppData/Local/nvim/plugins/telescope.vim

" Rainbow Bracket
source C:/Users/Yogi/AppData/Local/nvim/plugins/rainbowbracket.vim

" NerdTree
source C:/Users/Yogi/AppData/Local/nvim/plugins/nerdtree.vim

" DevIcons
source C:/Users/Yogi/AppData/Local/nvim/plugins/devicons.vim

" NerdCommenter
source C:/Users/Yogi/AppData/Local/nvim/plugins/nerdcommenter.vim

" Prettier
"source C:/Users/Yogi/AppData/Local/nvim/plugins/prettier.vim

" Neoformat
"source C:/Users/Yogi/AppData/Local/nvim/plugins/neoformat.vim

" Autoformat
"let g:run_all_formatters_python = 1

" Autorun command when opening vim and open all necessary stuff
"autocmd VimEnter * split
"autocmd VimEnter * resize -10
"autocmd VimEnter * terminal
"autocmd VimEnter * vsplit
"autocmd VimEnter * terminal
""autocmd VimEnter * <C-\><C-N><C-w>
"au VimEnter * wincmd k


"" Need Fixing
"" Setting to to opening new file (Note) in new tab with new nerdtree buffer 
"autocmd BufEnter * lcd %:p:h
"nnoremap gq :tabnew C:/Note/All/vim.md<CR>:NERDTreeToggle %<CR>:wincmd l<CR>
""nnoremap gq :tabnew C:/Note/test.txt<CR>:NERDTreeFind C:/Note/test.txt<CR>

"" mapping closing tab to :v
"cnoremap v tabclose

