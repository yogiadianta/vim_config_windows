" Configuraton for NeoVim Windows

"" map 'jk' and 'kj' to escape key in insert and command mode
inoremap jk <esc>
cnoremap jk <esc>

let mapleader = ","

" Map ,, to refresh vimrc
map <leader><leader> :source % <CR>

" set every tab equal with 4 spaces and scrolloff 8
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set scrolloff=14
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
vnoremap > >gv
vnoremap < <gv
vnoremap <tab> >gv
nnoremap ge >a{j

" Set tab width 2 for css and html only file
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType tmpl setlocal tabstop=2 shiftwidth=2 softtabstop=2

" Make toggle ga for opening and closing terminal in Vim
nnoremap ga :split <CR> :resize -8 <CR> :terminal<CR>
tnoremap ga <C-\><C-n>:q!<CR>

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
nnoremap <A-a> <C-w>>
nnoremap <A-s> <C-w>-
nnoremap <A-w> <C-w>+
nnoremap <A-d> <C-w><

" map change tab
nnoremap <A-m> :tabn<CR>
nnoremap <A-n> :tabp<CR>
" cahnge tab order
nnoremap <A-,> :tabmove -1<CR>
nnoremap <A-.> :tabmove +1<CR>

" Plugins Section
source ./plugins/lists.vim

"Purify
"let g:purify_bold = 0        " default: 1
"let g:purify_italic = 0      " default: 1
"let g:purify_underline = 0   " default: 1
"let g:purify_undercurl = 0   " default: 1
"let g:purify_inverse = 0     " default: 1
""let g:purify_override_colors = {
    """\ 'pink':  { 'gui': '#FF87FF', 'cterm': '213' },
    """\ 'green': { 'gui': '#5FD700', 'cterm': '76' }
""\ }
"syntax on " This is required
"set background=dark
"colorscheme purify

" Gruvbox
source ./plugins/gruvbox.vim

"Emmet
source ./plugins/emmet.vim

" Airline
source ./plugins/airline.vim

"Coc Completion
source ./plugins/coc.vim

" Telescope
source ./plugins/telescope.vim

" Rainbow Bracket
source ./plugins/rainbowbracket.vim

" NerdTree
source ./plugins/nerdtree.vim

" DevIcons
source ./plugins/devicons.vim

" NerdCommenter
source ./plugins/nerdcommenter.vim

" Lsp
let g:builtin_lps = v:true

" Neoformat
" nnoremap gs :Neoformat<Cr>
" Run Neoformat everytime doing safe file
"augroup fmt
    "wautocmd!
    "autocmd BufWritePre * undojoin | Neoformat
"augroup END
"let g:neoformat_enabled_python = ['autopep8']

" Autoformat
"let g:run_all_formatters_python = 1

" Need to find out more in :help or :options, See The prime yt video for more
" set hidden
"
" undodir=~/.vim/undodir
" undofile
" noshowmode
" completeopt=menuone,noinsert,noselect
