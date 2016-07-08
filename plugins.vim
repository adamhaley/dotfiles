set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim' 
Plugin 'burnettk/vim-angular'
Plugin 'mattn/emmet-vim'
Plugin 'elzr/vim-json'

call vundle#end()            " required
filetype plugin indent on    " required
