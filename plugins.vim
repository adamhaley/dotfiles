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
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'elzr/vim-json'
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'ervandew/supertab'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'tarekbecker/vim-yaml-formatter'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
Plugin 'jreybert/vimagit'
Plugin 'cocopon/iceberg.vim'


" End of php-cs-fixer version 2 config params

call vundle#end()            " required
filetype plugin indent on    " required
