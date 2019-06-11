" Begin vim-plug stuff
" ******************
" ******************

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'

Plug 'jiangmiao/auto-pairs'

Plug 'itchyny/lightline.vim'

Plug 'terryma/vim-multiple-cursors'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'Valloric/YouCompleteMe'

call plug#end()

" ****************
" ****************
" End vim-plug stuff



" Start stuff shared by terminal vim and CLion/PyCharm vim
" ********************************************************
" ********************************************************

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

" So backspace functions properly.
set backspace=indent,eol,start

" Set tab space to 4 characters. Use space only, do not use tab.
set tabstop=4
set shiftwidth=4
set expandtab

" ******************************************************
" ******************************************************
" End stuff shared by terminal vim and CLion/PyCharm vim



" Start extra stuff when using terminal vim
" *****************************************
" *****************************************

" Auto indent
set autoindent

" Making space the leader key
:let mapleader = "\<Space>" 

" Use space-t to search git files through fzf.
nnoremap <leader>t :GFiles<cr>

" Remove all trailing whitespaces by calling F6
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
noremap <F6> :call <SID>StripTrailingWhitespaces()<CR>

" Needed for itchyny/lightline.vim
set laststatus=2

" If you use itchyny/lightline.vim, then -- INSERT -- is not needed anymore because the mode information is displayed in the status line
set noshowmode

" End extra stuff when using terminal vim
" ***************************************
" ***************************************
