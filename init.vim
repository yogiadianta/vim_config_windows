" Configuraton for NeoVim Windows

"" map 'jk' and 'kj' to escape key in insert and command mode
inoremap jk <esc>
cnoremap jk <esc>
"inoremap kj <esc>
"tnoremap jk <esc>

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

" set cursor stay at blinking even in all mode
"set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
"                \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
"               \,sm:block-blinkwait175-blinkoff150-blinkon175

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

"" netrw setting
"let g:netrw_winsize = -28
"let g:netrw_banner = 0
"let g:netrw_liststyle = 4
"let g:netrw_browse_split = 4
"let g:netrw_winsize = 15
"let g:netrw_altv = ""
""let g:netrw_sort_options = 3
"" sort is affecting only; directories on top, files below
""let g:netrw_sort_sequence = '[\/]$,*'

"augroup ProjectDrawer
"    autocmd!
"    autocmd VimEnter * :Vexplore
"augroup END

"" Create new file without opening it in dir list panel
"autocmd filetype netrw call Netrw_mappings()
"function! Netrw_mappings()
"    noremap <buffer>% :call CreateInPreview()<cr>
"endfunction
"function! CreateInPreview()
"    let l:filename = input("please enter filename: ")
"    "exec 'pedit ' . b:netrw_curdir.'/'.l:filename
"    execute 'silent !echo off > ' . b:netrw_curdir.'/'.l:filename.'&& echo on'
"    redraw!
"endf


" Plugins Section
call plug#begin('~/.vim/plugged')
    " Vim surround
    Plug 'tpope/vim-surround'

    "Prettier
    "Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
    "Plug 'sbdchd/neoformat'
    "Plug 'vim-autoformat/vim-autoformat'

    "NerdTree
    Plug 'preservim/nerdtree'

    "Rainbow Bracket
    Plug 'frazrepo/vim-rainbow'

    "Icons
    Plug 'https://github.com/ryanoasis/vim-devicons'
    "Plug 'https://github.com/adelarsq/vim-devicons-emoji'
    "Plug 'https://github.com/kyazdani42/nvim-web-devicons'

    "NerdCommenter
    Plug 'preservim/nerdcommenter'

    "Telescope
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'BurntSushi/ripgrep'
    Plug 'sharkdp/fd'

    "Fuzzy Finder
    "Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    "Themu
    Plug 'morhetz/gruvbox'

    "Statusbar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    "AutoCompleteion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    "Emmet
    Plug 'mattn/emmet-vim'
call plug#end()

"Emmet
let g:user_emmet_leader_key='<C-Z>'
"let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall
""enable all function in all mode.
"let g:user_emmet_mode='a'    
let g:user_emmet_settings = {
\  'variables': {'lang': 'ja'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<title></title>\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}

" Airline
"let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='raven'
" candidate them
" raven
" serene
" hybrid
" peaksea
" minimalist
" lucius
" monochrome
" google_dark
" onedark
" deus
" distinguished
" biogoo
" zenburn
" owo
"let g:airline_base16_improved_contrast = 1

" airline for tabline
"let g:airline#extensions#tabline#enabled = 1
""let g:airline#extensions#tabline#show_buffers = 0
""let g:airline#extensions#tabline#show_tabs = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
"let g:airline#extensions#tabline#close_symbol = '×'
"let g:airline#extensions#tabline#show_close_button = 0

" Change the airline tab separator
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"Coc Completion
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" coc config for extension
let g:coc_global_extensions = [
  \ 'coc-go',
  \ 'coc-tsserver',
  \ ]

" Check More of this Yogi, come from ben awan init.nvim
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
"nmap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gd :call CocAction('jumpDefinition', 'vsplit')<CR>
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
"nnoremap <silent> gi :call CocAction('jumpImplementation', 'split')<CR>
nnoremap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

"Fuzzy Finder


" Telescope
"nnoremap <C-p> :Telescope find_files layout_config={"prompt_position":"top"} <CR> <esc>
"nnoremap <C-p> :Telescope find_files initial_mode=normal layout_config={"prompt_position":"bottom"} <CR>
nnoremap <C-p> :Telescope find_files layout_config={"prompt_position":"bottom"} <CR>
nnoremap <C-l> telescope.actions.layout.toggle_preview(true)
nnoremap gc telescope.actions.layout.toggle_preview(false)
"autocmd telescope.setup()
"call telescope#asd()

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

" Gruvbox
set background=dark
let g:gruvbox_contrast_dark='hard'
" Returns true if the color hex value is light
function! IsHexColorLight(color) abort
  let l:raw_color = trim(a:color, '#')

  let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
  let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1', 'g'), 16)
  let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)

  let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

  return l:brightness > 155
endfunction
colorscheme gruvbox

" Rainbow Bracket
let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']


" NerdTree
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

" DevIcons
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
"let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" adding to vim-airline's tabline
"let g:webdevicons_enable_airline_tabline = 1
" enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" NerdCommenter
let g:NERDCreateDefaultMappings = 1

" Lsp
let g:builtin_lps = v:true

" Need to find out more in :help or :options, See The prime yt video for more
" set hidden
"
" undodir=~/.vim/undodir
" undofile
" noshowmode
" completeopt=menuone,noinsert,noselect
