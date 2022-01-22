call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
" Declare the list of plugins.
Plug 'itchyny/lightline.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sainnhe/sonokai'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let g:lightline = {}

lua <<EOF
require'nvim-treesitter.configs'.setup {
	-- One of "all", "maintained" (parsers with maintainers), or a list of languages
	ensure_installed = { "cpp", },
	
	-- Install languages synchronously (only applied to `ensure_installed`)
	sync_install = false,
	
	-- List of parsers to ignore installing
	ignore_install = { "javascript" },
	
	highlight = {
		-- `false` will disable the whole extension
		enable = true,
		
		-- list of language that will be disabled
		disable = { "c", "rust" },
		
		additional_vim_regex_highlighting = false,
	},
}
EOF

nnoremap <a-e> :Files<CR>

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
