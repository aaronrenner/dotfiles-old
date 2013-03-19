" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

call pathogen#infect()
call pathogen#helptags()

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

:command PP :!rake push:pages
:command PTA :!rake push:theme_assets
:command PA :!rake push:all
