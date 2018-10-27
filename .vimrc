

"
" General information
"

" The  in this file may not copy properly to your .vimrc if you copy from
" this file with the clipboard. To write this character properly, you must
" press ctrl + v to go into a special character entry mode, then press ctrl + enter.



"
" Must haves
"

" Increase size of copy buffer so you can copy large amounts of text. This
" will increase the size to 1000, which is probably more than you'll ever
" need.
set viminfo='20,<1000

" Map ; to : so you don't need to press shift
" all the time when closing files. The ; key is
" not very useful anyways.
nnoremap ; :
vnoremap ; :

" The following line enables many vim features which might be otherwise turned
" off. If you have a .vimrc file it should be off by default anyways.
set nocp



"
" Highlighting while searching
"

" Show search results while typing search criteria
set incsearch

" Highlight search results
set hlsearch

" You can set this (or other settings) to a toggle like so
noremap <F4> :set hlsearch! hlsearch?<CR>

" Adding a mapping so Enter clears the highlighted results
nnoremap <CR> :noh<CR><CR>



"
" Compile macro
"

" Remap @q to close and compile
let @Q=":wa:make"

set makeprg=ca



"
" Spell checking
"

" Press F5 to toggle comment spell checking
noremap <F5> :setlocal spell! spelllang=en_us<CR>

" Disable capital checking
set spellcapcheck=false



"
" Ctags
"

" Enable plugins (for OmniCppComplete)
filetype plugin on

" Set locations of tags file
set tags=~/.vim/tags

" These lines aren't necessary and I don't know what they do. They were
" recommended online. 
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]



"
" Pathogen
"

" Needed to initialize pathogen
execute pathogen#infect()
execute pathogen#helptags()



"
" Other
"

" Helps add m in front of member variables
let @m=":%s//m\u&/gc"

" Set the leader key to be spacebar
:let mapleader = "\<Space>"

" Ignores these files when using command-t
set wildignore=*/doxygen/*,*/build/*


"
" Header source file jump
"

" Put vim_util.vim in your home directory
source ~/personal_vimrc/vim_util.vim
" Remap @w to jump between source code and header
" and @e to split
let @w=":call HeaderJump()"
let @e=":call HeaderSplit()"

" macro for quickly switching to ~/.vimrc file
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" macro to quickly source ~/.vimrc file so you don't need
" to restart vim after adding a macro (such as with <leader>ev macro)
nnoremap <leader>sv ma<cr>:silent! source $MYVIMRC<cr>'azz

" quick exit out of insert mode
inoremap jk <esc>


"
" Andy's additional stuff
" 

" Display line number on the bottom right corner 
:set ruler

" Display syntax color
syntax on

set autoindent

" So backspace functions properly
set backspace=indent,eol,start

" Set tab space to 4 characters
" Use tab only, do not use space
set tabstop=4
set shiftwidth=4
set noexpandtab


" Jump between methods and center it in the screen
nnoremap } ]mzz
nnoremap { [mzz

" Auto complete
inoremap {}<CR> {}<esc>i<cr><cr><esc>kA<tab>

noremap <F3> :set rnu! rnu?<CR>
noremap <F2> :set nu! nu?<CR>
