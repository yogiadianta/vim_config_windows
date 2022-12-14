call plug#begin('~/.vim/plugged')
    " Vim surround
    Plug 'tpope/vim-surround'

    "Prettier
    " post install (yarn install | npm install) then load plugin only for editing supported files
    "Plug 'prettier/vim-prettier', {
      "\ 'do': 'yarn install --frozen-lockfile --production',
      "\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
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

    "Theme
    Plug 'morhetz/gruvbox'
    Plug 'kyoz/purify', { 'rtp': 'vim' }
    Plug 'ghifarit53/tokyonight-vim'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'olivercederborg/poimandres.nvim'

    "Statusbar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    "AutoCompleteion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    "Emmet
    Plug 'mattn/emmet-vim'

    "Harpoon
    Plug 'ThePrimeagen/harpoon'

    "Vim-fugitive
    Plug 'tpope/vim-fugitive'
call plug#end()
