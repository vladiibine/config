set nocompatible              " be iMproved
filetype off                  " required!

" This was taken from here https://github.com/VundleVim/Vundle.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'scrooloose/syntastic.git'

filetype plugin indent on     " required!



"<Tab> inserts 4 spaces
set tabstop=4

" Indent level is 4 spaces wide
set shiftwidth=4            
"set smartindent

" <BS> over an autoindent deletes both spaces
"set softtabstop=4           
set tabstop=4

" Don't fold by default
set foldlevel=99            

" Color column to mark the end 80 char limit
set colorcolumn=79          

" Handle tabs more intelligently
set smarttab                

" VWH dont expand tabs
set noexpandtab
set autoindent

" Use spaces, not tabs, for autoindent/tab key
"set expandtab

" Rounds indent to a multiple of shiftwidth
set shiftround              

" Use tabs to move between bracket pairs
nnoremap <tab> %
vnoremap <tab> %

"Shoe line numbers
set number

"Set search highlight ON
set hls

"Show some status crap all the time
set statusline=[%l,%v\ %P%M]\ %f\ %r%h%w\ (%{&ff})\
colorscheme desert

"Set syntax highlight on
syntax on

" Remove trailing whitespace on <leader>S
nnoremap <leader>s :%s/\s\+$//<cr>:let @/=''<CR>


"""""""Helpful commands
" open a file in binary mode
" :r !xxd sample.bin
