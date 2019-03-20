" Map ; to : so you don't need to press shift all the time when closing files.
nnoremap ; :
vnoremap ; :

" Enable some options.
set nocp

" Show search results while typing search criteria.
set incsearch

" Highlight search results.
set hlsearch

" Adding a mapping so Enter clears the highlighted results.
nnoremap <CR> :noh<CR><CR>

" quick exit out of insert mode.
inoremap jk <esc>

" Display line number on the bottom right corner.
:set ruler

" Autoindent.
set autoindent

" So backspace functions properly.
set backspace=indent,eol,start

" Set tab space to 4 characters. Use space only, do not use tab.
set tabstop=4
set shiftwidth=4
set expandtab
