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
        Plug 'pangloss/vim-javascript'
        "Plug 'leafgarland/typescript-vim'
        Plug 'maxmellon/vim-jsx-pretty'
        Plug 'folke/tokyonight.nvim', {'branch': 'main'}
        Plug 'rakr/vim-one'
        Plug 'voldikss/vim-floaterm'
        Plug 'joshdick/onedark.vim'
        Plug 'sainnhe/edge'
        Plug 'sheerun/vim-polyglot'
        Plug 'morhetz/gruvbox'
        Plug 'HerringtonDarkholme/yats.vim'
        Plug 'Yggdroot/indentLine'
call plug#end()


" NERDTree 
let NERDTreeShowHidden=1


" Open new split panes to right and below
set splitright
set splitbelow


" Commands
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype typescript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype html setlocal ts=2 sw=2 expandtab


" Start NERDTree and leave the cursor in it
autocmd VimEnter * NERDTree


" CoC Params
let g:coc_global_extensions = ['coc-tsserver']
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Color scheme
"set background=dark
"let g:one_allow_italics = 1
"
if has('termguicolors')
    set termguicolors
endif

"let g:edge_style = 'aura'
"let g:edge_better_performance = 1
"let g:airline_theme = 'edge'

colorscheme gruvbox

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1



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

"Prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

"Vim Session
"autocmd! VimLeave * mksession
"autocmd! VimEnter * source ~/Session.vim 
"
"

" Indent Line
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"Mappings
cmap nt NERDTree

cmap ftn FloatermNew
cmap ftt FloatermToggle
cmap ft1 FloatermFirst
cmap ft2 FloatermLast
