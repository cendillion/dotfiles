call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
" Declare the list of plugins.
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'sainnhe/sonokai'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let g:lightline = {}

nnoremap <C-n> :NERDTreeToggle<CR>

set termguicolors
let g:sonokai_style = 'shusia'
colorscheme sonokai
let g:lightline.colorscheme = 'sonokai'

set laststatus=2
set title
set nu rnu
set mouse=nvi
set tabstop=2
set shiftwidth=2
let g:loaded_matchparen = 1
