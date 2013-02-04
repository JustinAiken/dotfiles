set nocompatible      " We're running Vim, not Vi!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'vim-ruby/vim-ruby.git'
Bundle 'tpope/vim-rails.git'
Bundle 'kien/ctrlp.vim'
Bundle 'Yggdroot/indentLine'
Bundle 'Lokaltog/vim-powerline'

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
compiler ruby         " Enable compiler support for ruby

set noswapfile
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set smartindent
set nu
set nowrap
colorscheme vividchalk

" Set line numbers when entering a window
" Unset them when leaving a window
" define an autocmd group for these so they can be
" undefined and redefined if you source your vimrc again
if has("autocmd")
  augroup vimrccmds
  autocmd!
  autocmd WinEnter * exec "set number"
  autocmd WinLeave * exec "set nonumber"
  augroup END
endif
set number

set laststatus=2 
set guifont=Inconsolata:h14,Monaco:h12
set antialias
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar

set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
