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

"Locomotive CMS Shortcuts
:command PP :!bundle exec rake push:pages
:command PTA :!bundle exec rake push:theme_assets
:command PSS :!bundle exec rake push:stylesheet
:command PJS :!bundle exec rake push:js
:command PS :!bundle exec rake push:snippets
:command PCE :!bundle exec rake push:content_entries
:command PCT :!bundle exec rake push:content_types
:command PA :!bundle exec rake push:all
