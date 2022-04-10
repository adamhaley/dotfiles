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
set autowriteall

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
nmap <Leader>es :e ~/.vim/snippets/
nmap <Leader>1	:NERDTreeToggle<cr>
nmap <c-R> :CtrlPBufTag<cr> 

"Greplace.vim
set grepprg=ag "using Ag for search - cos its faaaasst
let g:grep_cmd_opts = '--line-numbers --noheading'

"Add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

"--------------AUTO-COMMANDS-------------"

"Auto-source .vimrc on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END


function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>

autocmd FileType php inoremap <Leader>s <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader>s :call PhpSortUse()<CR>

let g:snipMate = { 'snippet_version' : 1 }

let g:php_namespace_sort_after_insert = 1


" If you use php-cs-fixer version 1.x
let g:php_cs_fixer_level = "psr2"                   " options: --level (default:symfony)

let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.
