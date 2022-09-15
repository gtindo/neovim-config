set nocompatible
set showmatch
set ignorecase
set mouse=v
set hlsearch
set incsearch

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number
set wildmode=longest,list

syntax on
set mouse=a
set clipboard=unnamedplus
set cursorline
set ttyfast

set noswapfile
set backupdir=~/.cache/vim

set encoding=utf8
set guifont=DroidSansMono_Nerd_Font:h11


call plug#begin("~/.vim/plugged")
		"Plugin Section
		Plug 'dracula/vim'
		Plug 'ryanoasis/vim-devicons'
		Plug 'SirVer/ultisnips'
		Plug 'honza/vim-snippets'
		Plug 'scrooloose/nerdtree'
		Plug 'preservim/nerdcommenter'
		Plug 'mhinz/vim-startify'
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'projekt0n/github-nvim-theme'
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        " post install (yarn install | npm install) then load plugin only for editing supported files
        Plug 'prettier/vim-prettier', {
             \ 'do': 'yarn install --frozen-lockfile --production',
             \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
        Plug 'ryanoasis/vim-devicons'
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'pantharshit00/vim-prisma'
        Plug 'w0rp/ale'
call plug#end()



" Open new split panes to right and below
set splitright
set splitbelow


" Commands
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype typescript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype html setlocal ts=2 sw=2 expandtab


" Start NERDTree and leave the cursor in it
autocmd VimEnter * NERDTree




" Color scheme
colorscheme dracula

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '|'
let g:airline_powerline_fonts = 1


" Auto close
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"EsLint
let g:ale_fixers = {
 \ 'javascript': ['eslint'],
 \ 'typescript': ['eslint']
 \ }
 
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
