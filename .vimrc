execute pathogen#infect()
syntax on
map <C-n> :NERDTreeToggle<CR>
autocmd BufWritePre * :%s/\s\+$//e " Delete trailing spaces
" Search files using CTRL-P
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Zoom plugin to make a tab full screen
nmap <C-W>z <Plug>ZoomWin
" YouCompleteMe setup
set nocompatible              " be iMproved, required
filetype on                  " required

" Using Ag with ack.vim for global search
let g:ackprg = 'ag --nogroup --nocolor --column  --ignore-dir app/assets/javascripts/* --ignore-dir log/* --ignore node_modules --ignore-dir "./public/stylesheets/*'

" Call elm-format on save
let g:elm_format_autosave = 1

" import everything from the rcfiles directory
function! s:SourceConfigFilesIn(directory)
  let directory_splat = '~/.vim/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
      execute 'source' config_file
    endif
  endfor
endfunction

call s:SourceConfigFilesIn('rcfiles')

"  Stop stupid modifiable is off error message
:autocmd BufWinEnter * setlocal modifiable


"Remove all trailing whitespace by default
autocmd BufWritePre *.rb :%s/\s\+$//e
