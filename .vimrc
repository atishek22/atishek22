set nocompatible " Use Vim settings, rather than Vi settings
set encoding=utf-8
set linebreak
syntax enable
"Usability improvements
set scrolloff=3
set linespace=0
filetype plugin indent on " Enable indenting for files
set softtabstop=2 " Indent by 2 spaces when hitting tab
set shiftwidth=4 " Indent by 4 spaces when auto-indenting
set tabstop=4 " Show existing tab with 4 spaces width
set autoindent " Enable auto indenting
set number " Enable line numbers
set expandtab
set nobackup " Disable backup files
set laststatus=2 "show status line
set statusline=%F%m%=(%{&ff}/%y)\ (%l\/%L)
set wildmenu " Display command line's tab complete options as a menu.
set history=500
set showmode
set nobackup
set autoread
set completeopt-=preview
set cmdheight=3
set undofile
set hlsearch

"netrw config
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 30


"Swap directory
set directory=$HOME/.vim/swp//
"Undo directory
set undodir=~/.vim/undodir//

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'flazz/vim-colorschemes'
"Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'dracula/vim', { 'name': 'dracula' }
Bundle 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'udalov/kotlin-vim'
"Plugin 'neoclide/coc.nvim'
Plugin 'preservim/nerdtree'
call vundle#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
":AirlineTheme wombat
let g:airline_theme = 'gruvbox'
let g:airline#extensions#whitespace#enabled = 0
"Clangd settings
" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
"colorscheme
colorscheme gruvbox
set background=dark

"Nerdtree Toggle
nnoremap <C-n> :NERDTreeToggle<CR>

"Screen split and window nav
nnoremap <Space> <Nop>
let mapleader=" "
nnoremap <leader>b :sp<CR>
nnoremap <leader>c :vsp<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>m :tabn<CR>

"Speific settings for Python(Django)
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
