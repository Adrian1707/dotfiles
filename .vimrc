execute pathogen#infect()
syntax on
map <C-n> :NERDTreeToggle<CR>
let g:netrw_altv = 1
let g:netrw_liststyle = 3
set splitright
set splitbelow
set autoindent " Set autoindenting
set tabstop=2
" Indents will have a width of 2
set shiftwidth=2
" Make backspace work like it should
set backspace=2
" Highlight searches when searching
set hlsearch
set incsearch "search as characters are entered
set number
" highlight cursor line
" set relative numbers
set relativenumber
set cul
" allow buffers to go into the background without needing to save
set hidden
" Remap jj to escape insert mode and save when exiting insert mode
inoremap jj <ESC> :w<CR>
"Allow copy and paste to work
set clipboard=unnamed

au VimEnter *  NERDTree
" size of a hard tabstop
" always uses spaces instead of tab characters
set expandtab
"Do not enter Ex mode ever
nmap Q <nop>

autocmd BufWritePre * :%s/\s\+$//e " Delete trailing spaces
" Search files using CTRL-P
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Set colorscheme
colorscheme Monokai
" Zoom plugin to make a tab full screen
nmap <C-W>z <Plug>ZoomWin
" YouCompleteMe setup
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugin for colorschemes
Plugin 'flazz/vim-colorschemes'
"Plugin for autocomplete
Plugin 'Valloric/YouCompleteMe'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'rking/ag.vim'
Plugin 'mtscout6/vim-cjsx'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomtom/tcomment_vim'
Plugin 'luochen1990/rainbow'
Plugin 'tpope/vim-surround'
call vundle#end()            " required
filetype plugin indent on    " required

" Using Ag with ack.vim for global search
let g:ackprg = 'ag --nogroup --nocolor --column'

" fugitive git bindings
 nmap <space>ga :Git add %:p<CR><CR>
 nmap <space>gs :Gstatus<CR>
 nmap <space>gc :Gcommit -v -q<CR>
 nmap <space>gd :Gdiff<CR>
 nmap <space>gl :silent! Glog<CR>:bot copen<CR>
 nmap <space>gb :Git branch<Space>
 nmap <space>gco :Git checkout<Space>
 nmap <space>gbl :Gblame <Space>


" bind K to grep word under cursor
nmap K :Ag "\b<C-R><C-W>\b"<CR>:cw<CR>
nmap <space>f :Ag<space>

" Bind the space and b key to buffers list
cmap <space>b :buffers<CR>:buffer<Space>

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" Map tab key to next buffer
nmap <Tab> :bnext<CR>
map <C-K> :bnext<CR>
map <C-J> :bprev<CR>
"Map space key and w to save
nmap <Space>s :w<CR>
nmap <Space>q :qa!<CR>

"Map l key to right pane and h key to left pane
map <C-L> <C-w>w
map <C-H> <C-w>p

"map = and -  to end and beginning of line. More intuitive and easy on the fingers
nnoremap = $
nnoremap - 0

"  Stop stupid modifiable is off error message
:autocmd BufWinEnter * setlocal modifiable


" Show buffer number in status bar
let g:airline#extensions#tabline#buffer_nr_show = 1

" remap space and d to delete buffer command
nmap <Space>d :bd <Space>

"remap gc comment keys to space c
nmap <Space>c gc

"Remove all trailing whitespace by default
autocmd BufWritePre *.rb :%s/\s\+$//e
let g:rainbow_active = 1
 let g:rainbow_conf = {
    \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
    \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
    \   'operators': '_,_',
    \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \   'separately': {
    \       '*': {},
    \       'tex': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    \       },
    \       'lisp': {
    \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \       },
    \       'vim': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \       },
    \       'html': {
    \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    \       },
    \       'css': 0,
    \   }
    \}
