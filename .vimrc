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
set cul
" allow buffers to go into the background without needing to save
set hidden
" Remap jj to escape insert mode and save when exiting insert mode
inoremap jj <ESC> :w<CR>
"Allow copy and paste to work
set clipboard=unnamed
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.tmp/*,*/.sass-cache/*,*/node_modules/*,*.keep,*.DS_Store,*/.git/*
" allow basic mouse functionality
set mouse=a
au VimEnter *  NERDTree
" size of a hard tabstop
" always uses spaces instead of tab characters
set expandtab
"Do not enter Ex mode ever
nmap Q <nop>

autocmd BufWritePre * :%s/\s\+$//e " Delete trailing spaces
" Search files using CTRL-P
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Zoom plugin to make a tab full screen
nmap <C-W>z <Plug>ZoomWin
" YouCompleteMe setup
set nocompatible              " be iMproved, required
filetype on                  " required

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
Plugin 'elmcast/elm-vim'
Plugin 'thoughtbot/vim-rspec'
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on

" Using Ag with ack.vim for global search
let g:ackprg = 'ag --nogroup --nocolor --column  --ignore-dir app/assets/javascripts/* --ignore-dir log/* --ignore node_modules --ignore-dir "./public/stylesheets/*'

" Call elm-format on save
let g:elm_format_autosave = 1

function! s:SourceConfigFilesIn(directory)
  let directory_splat = '~/.vim/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
      execute 'source' config_file
    endif
  endfor
endfunction
call s:SourceConfigFilesIn('rcfiles')


" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"  Stop stupid modifiable is off error message
:autocmd BufWinEnter * setlocal modifiable

" Show buffer number in status bar
let g:airline#extensions#tabline#buffer_nr_show = 1


"Remove all trailing whitespace by default
autocmd BufWritePre *.rb :%s/\s\+$//e
