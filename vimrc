set nocompatible              " be iMproved, required
syntax enable
syntax match Tab /\t/
hi Tab gui=underline guifg=blue ctermbg=blue

so ~/.vim/plugins.vim

colorscheme atom-dark-256
"colorscheme railscasts
"set background=dark

"let g:solarized_termcolors=256
"colorscheme solarized
let mapleader =","
set number
set linespace=15
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4


"--------------- Toggle PASTE MODE -----------------"
nnoremap <Leader>pm :set invpaste paste?<CR>
set pastetoggle=<Leader>pm
set showmode


"--------------- SEARCH -----------------"
set hlsearch
set incsearch

"--------------- SPLIT MANAGEMENT -------"
set splitbelow
set splitright

nmap <c-J> <c-W><c-J>
nmap <c-K> <c-W><c-K>
nmap <c-J> <c-W><c-J>
nmap <c-J> <c-W><c-L>

nmap <c-R> :CtrlPBufTag<cr>



"--------------- MAPPINGS ---------------"
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>
nmap <Leader>1	:NERDTreeToggle<cr>
nmap <c-R> :CtrlPBufTag<cr> 

"Add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>


"--------------AUTO-COMMANDS-------------"

"Auto-source .vimrc on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
