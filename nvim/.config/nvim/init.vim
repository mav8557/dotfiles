" enables syntax highlighting
syntax on

" Better colors
set termguicolors

" git signs in the number column
set signcolumn=number

" number of spaces in a <Tab>
set tabstop=4
set softtabstop=4
set expandtab

" enable autoindents
set smartindent

" Don't show mode twice when using lightline
set noshowmode

" number of spaces used for autoindents
set shiftwidth=4

" adds line numbers
set number
set relativenumber

" columns used for the line number
set numberwidth=4

" highlights the matched text pattern when searching
set incsearch
set nohlsearch

" open splits intuitively
set splitbelow
set splitright

" navigate buffers without losing unsaved work
set hidden

" start scrolling when 8 lines from top or bottom
set scrolloff=8

" Save undo history
set undofile

" Enable mouse support
set mouse=a

" case insensitive search unless capital letters are used
set ignorecase
set smartcase

" Plugins!
call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Colorschemes
Plug 'sainnhe/gruvbox-material'
Plug 'rakr/vim-one'
Plug 'connorholyday/vim-snazzy'
" The main Telescope plugin
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }
Plug 'itchyny/lightline.vim' " status bar with mode/filename/git branch
Plug 'tpope/vim-fugitive' " git from within neovim
Plug 'lewis6991/gitsigns.nvim' " git signs
Plug 'neovim/nvim-lspconfig' " lsp support
" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'
Plug 'dense-analysis/ale'
Plug 'easymotion/vim-easymotion'
Plug 'andweeb/presence.nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
call plug#end()

lua require('mav8557')

" Colorscheme
colorscheme gruvbox-material
"colorscheme snazzy
"colorscheme one
set background=dark

" Lint on save

" Remaps
let mapleader = ' '

"nnoremap <leader>h :wincmd h<Cr>
"nnoremap <leader>j :wincmd j<Cr>
"nnoremap <leader>k :wincmd k<Cr>
"nnoremap <leader>l :wincmd l<Cr>

nnoremap <C-p> :Telescope find_files<Cr>
nnoremap <leader>ff :Telescope live_grep<Cr>
nnoremap <leader>gc :Git commit<Cr>
nnoremap <silent><leader>gc :Git commit<Cr>
nnoremap <silent><leader>gp :Git push<Cr>
nnoremap <silent><leader>gd :Git diff<Cr>
nnoremap <silent><leader>gs :Git status<Cr>


" easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
let g:EasyMotion_do_shade=0

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-bd-w)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
"nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

