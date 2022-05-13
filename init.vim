noremap <silent> e k
noremap <silent> f e
noremap <silent> b t
noremap <silent> i l
noremap <silent> j y
noremap <silent> k n
noremap <silent> l u
noremap <silent> n j
noremap <silent> o p
noremap <silent> p r
noremap <silent> r s
noremap <silent> s d
noremap <silent> t f
noremap <silent> u i
noremap <silent> y o
noremap <silent> d v
noremap <silent> h m
noremap <silent> v b
noremap <silent> m h

noremap <silent> E K
noremap <silent> F E
noremap <silent> B T
noremap <silent> I L
noremap <silent> J Y
noremap <silent> K N
noremap <silent> L U
noremap <silent> N J
noremap <silent> O P
noremap <silent> P R
noremap <silent> R S
noremap <silent> S D
noremap <silent> T F
noremap <silent> U I
noremap <silent> Y O
noremap <silent> D V
noremap <silent> H M
noremap <silent> V B
noremap <silent> M H

noremap <C-w>e <C-w>k
noremap <C-w>n <C-w>j
noremap <C-w>m <C-w>h
noremap <C-w>i <C-w>l
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

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

let mapleader=" "
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
nmap <C-t> :NERDTreeToggle<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <C-p> :CocCommand prettier.formatFile<CR>
nmap tt :CocCommand explorer<CR>

colorscheme nord


