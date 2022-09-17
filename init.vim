source $HOME/.config/nvim/colemak.vim

set autochdir
set exrc
set secure
set number
set relativenumber
set cursorline
set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set list
set listchars=tab:\|\ ,trail:▫
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set ignorecase
set smartcase
set shortmess+=c
let mapleader = " "

noremap ; :
nnoremap Q :q<CR>
nnoremap S :w<CR>

nnoremap <LEADER>rc :e $HOME/.config/nvim/init.vim<CR>
noremap <LEADER>rv :e .nvimrc<CR>

 " Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/playground'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

source $HOME/.config/nvim/plug-config/coc.vim

set number relativenumber
set smartindent
set tabstop=2
set expandtab
set shiftwidth=2

vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  :CocCommand eslint.executeAutofix<CR>
nmap <C-p> :Files<CR>
nmap <leader>gi :diffget //3<CR>
nmap <leader>gm :diffget //2<CR>
nmap <leader>p :CocCommand prettier.formatFile<CR>
nmap tt :CocCommand explorer<CR>

colorscheme nord

