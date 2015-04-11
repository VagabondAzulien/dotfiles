"========================"
" vimrc file for niblock "
"========================"

" +++ Settings +++

" https://stackoverflow.com/questions/5845557/in-a-vimrc-is-set-nocompatible-completely-useless
set nocompatible

" Shows you which commands you're typing
set showcmd

" Enables addons via Pathogen
" Add-ons go in ~/.vim/bundle/
execute pathogen#infect()

" Necessary for Syntax hilighting
syntax on
filetype plugin indent on

" Enable line numbers
set number

" Indendation modifications
" Auto indent; set spacing; use spaces
set autoindent
set expandtab
set smarttab
set shiftwidth=5
set softtabstop=5

" Spacing
" Set width; word wrap; scroll mods
set scrolloff=5
set tw=80
set wrap

" Enable auto-completion for vim commands
" :help wildmode and :help wildmenu for details
set wildmenu
set wildmode:longest:full,full

" Search modifications
" Incremental search; search hilighting
set incsearch
set hlsearch

" Set color scheme... duh...
colorscheme desert

" +++ Mappings +++

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
