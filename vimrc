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
Bundle 'vim-scripts/HTML-AutoCloseTag'

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-commentary'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-eunuch'
Bundle 'kchmck/vim-coffee-script'
Bundle 'mileszs/ack.vim'
Bundle 'cakebaker/scss-syntax.vim'

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
set backspace=2 "make backspace work like most other apps

" Tab settings
set expandtab
set tabstop=2 "Number of spaces to indent when tab is pressed
set shiftwidth=2 "Number of spaces to indent with >>

let g:ctrlp_custom_ignore = '\v[\/](ib\.xcodeproj|build|tmp)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard']
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
let g:ack_default_options = " --ignore-dir=log --ignore-dir=coverage --ignore-dir=tmp --ignore-file=is:tags"

let mapleader = ","

" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
map <Leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
" map <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
" map <Leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>

" Indent the file
map <Leader>i mmgg=G`m<CR>

" Editing Vimrc
nmap <Leader>v :vnew $MYVIMRC<CR>

" Source the vimrc file after saving it
if has("autocmd")
 autocmd bufwritepost .vimrc source $MYVIMRC
end

" Closetag
autocmd Filetype html,xml,eruby source ~/.vim/bundle/HTML-AutoCloseTag/ftplugin/html_autoclosetag.vim

" Spec running stuff
map <Leader>t :w<cr>:call RunCurrentSpecFile()<CR>
map <Leader>s :w<cr>:call RunNearestSpec()<CR>
map <Leader>l :w<cr>:call RunLastSpec()<CR>
map <Leader>a :w<cr>:call RunAllSpecs()<CR>

" Creates parent directories if needed
map <Leader>d :!mkdir -p %:p:h<CR><CR>

" Toggle paste mode
set pastetoggle=<leader>p

" Run Rake db:migrate
map <Leader>m :Rake db:migrate db:test:prepare<CR>

" Remove trailing whitespace on save for ruby files.
au BufWritePre * :%s/\s\+$//e

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

