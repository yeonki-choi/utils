set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'


" ######## User Bundles here ##########

" For Chef script formatting
Bundle 't9md/vim-chef'

" For Using tree window on VIM
Bundle 'The-NERD-tree'

" For JSON formatting
Bundle 'elzr/vim-json'

" plugin from http://vim-scripts.org/vim/scripts.html
" buffer explorer
Bundle 'minibufexpl.vim'

" For Go Language formatting
" Bundle 'jnwhiteh/vim-golang'

" For HTML/CSS formatting
" Bundle 'mattn/emmet-vim'



filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set tabstop=4


" NERDTree
nmap <leader>nt :NERDTree<CR>
map <F12> :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1

" prev/next buffer
map <C-PageUp> :MBEbp<CR>
map <C-PageDown> :MBEbn<CR>
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
