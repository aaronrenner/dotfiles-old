" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off
runtime macros/matchit.vim

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" My Bundles Here
Bundle 'tpope/vim-unimpaired'

Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rake'

Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'

Bundle 'tpope/vim-endwise'

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-commentary'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'kchmck/vim-coffee-script'
Bundle 'mileszs/ack.vim'

" For running specs
Bundle 'thoughtbot/vim-rspec'
Bundle 'jgdavey/tslime.vim'

syntax on
if has("autocmd")
  filetype plugin indent on
end

set nobackup
set nowritebackup
set ruler
set number

" Tab settings
set expandtab
set tabstop=2 "Number of spaces to indent when tab is pressed
set shiftwidth=2 "Number of spaces to indent with >>

let g:ctrlp_custom_ignore = '\v[\/](ib\.xcodeproj|build|tmp)$'
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'

let mapleader = ","

" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
map <Leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
" map <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
" map <Leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>

" Editing Vimrc
nmap <Leader>v :vnew $MYVIMRC<CR>

" Source the vimrc file after saving it
if has("autocmd")
 autocmd bufwritepost .vimrc source $MYVIMRC
end

" Spec running stuff
map <Leader>t :w<cr>:call RunCurrentSpecFile()<CR>
map <Leader>s :w<cr>:call RunNearestSpec()<CR>
map <Leader>l :w<cr>:call RunLastSpec()<CR>
map <Leader>a :w<cr>:call RunAllSpecs()<CR>

" Creates parent directories if needed
map <Leader>d :!mkdir -p %:p:h<CR><CR>

" Remove trailing whitespace on save for ruby files.
au BufWritePre *.rb :%s/\s\+$//e

"
" Locomotive CMS Shortcuts
" :command PP :!bundle exec rake push:pages
" :command PTA :!bundle exec rake push:theme_assets
" :command PSS :!bundle exec rake push:stylesheet
" :command PJS :!bundle exec rake push:js
" :command PS :!bundle exec rake push:snippets
" :command PCE :!bundle exec rake push:content_entries
" :command PCT :!bundle exec rake push:content_types
" :command PA :!bundle exec rake push:all

