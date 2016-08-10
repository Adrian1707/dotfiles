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
set number

" Remap jj to escape insert mode
inoremap jj <ESC>
"Allow copy and paste to work
set clipboard=unnamed
au VimEnter *  NERDTree
" size of a hard tabstop

" always uses spaces instead of tab characters
set expandtab
"Do not enter Ex mode ever
nnoremap Q <nop>

"Allow so move between panes using cmd keys
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

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
call vundle#end()            " required
filetype plugin indent on    " required

" Using Ag with ack.vim for global search
let g:ackprg = 'ag --nogroup --nocolor --column'


" fugitive git bindings
 nnoremap <space>ga :Git add %:p<CR><CR>
 nnoremap <space>gs :Gstatus<CR>
 nnoremap <space>gc :Gcommit -v -q<CR>
 nnoremap <space>gd :Gdiff<CR>
 nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
 nnoremap <space>gb :Git branch<Space>
 nnoremap <space>gco :Git checkout<Space>
 nnoremap <space>gbl :Gblame <Space>


" Ag key binding
nnoremap s :Ag<SPACE>

" bind K to grep word under cursor
nnoremap K :Ag "\b<C-R><C-W>\b"<CR>:cw<CR>

" Bind the space and b key to buffers list 
nnoremap <space>b :buffers<CR>:buffer<Space>

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" Map tab key to next buffer
nmap <Tab> :bnext<CR>

"Map space key and w to save
nnoremap <Space>w :w<CR>
nnoremap <Space>q :q<CR>
