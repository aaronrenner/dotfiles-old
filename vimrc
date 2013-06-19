" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" My Bundles Here
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-commentary'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'kchmck/vim-coffee-script'
Bundle 'mileszs/ack.vim'

"Stuff for snipmate
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

syntax on
filetype plugin indent on

set nobackup
set nowritebackup
set ruler
set number

" Tab settings
set expandtab
set tabstop=2 "Number of spaces to indent when tab is pressed
set shiftwidth=2 "Number of spaces to indent with >>

let g:ctrlp_custom_ignore = '\v[\/](ib\.xcodeproj|build)$'

let mapleader = ","

" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
map <Leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>

" Remove trailing whitespace on save for ruby files.
au BufWritePre *.rb :%s/\s\+$//e

"
"Locomotive CMS Shortcuts
:command PP :!bundle exec rake push:pages
:command PTA :!bundle exec rake push:theme_assets
:command PSS :!bundle exec rake push:stylesheet
:command PJS :!bundle exec rake push:js
:command PS :!bundle exec rake push:snippets
:command PCE :!bundle exec rake push:content_entries
:command PCT :!bundle exec rake push:content_types
:command PA :!bundle exec rake push:all
