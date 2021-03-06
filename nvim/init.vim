" Gutter 
set relativenumber
set number
set colorcolumn=80
" Tabs 
set tabstop=4 softtabstop=4
set shiftwidth=4
set autoindent
set expandtab
set smartindent
set shiftround
" Search
set hlsearch
set ignorecase
set incsearch
set smartcase
" Misc
set scrolloff=10
set exrc
set confirm
set nowrap

syntax enable
highlight Normal guibg=none

let mapleader = " "

" Plugins
call plug#begin('~/.config/nvim/autoload/plugged')
	" Completion
	" Files
	Plug 'easymotion/vim-easymotion'
	" Theme
	" Plug 'morhetz/gruvbox'
	Plug 'sickill/vim-monokai'
call plug#end()

colorscheme monokai

augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=200 }
augroup END
