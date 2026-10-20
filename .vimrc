set nocompatible              " be iMproved, require
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'tpope/vim-commentary'
Plugin 'preservim/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'alvan/vim-closetag'
Plugin 'bbrtj/vim-jsonviewer'
Plugin 'godlygeek/tabular'
Plugin 'preservim/vim-markdown'

Plugin 'dracula/vim', { 'name': 'dracula' }
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set t_Co=256

packadd! dracula
syntax enable
colorscheme dracula

set autoindent noexpandtab tabstop=2 shiftwidth=2
autocmd Filetype python setlocal noexpandtab tabstop=2 shiftwidth=2

command! Et4 setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
command! Tab2 setlocal noexpandtab tabstop=2 shiftwidth=2 softtabstop=2
set nu
set list lcs=tab:\|\ 
highlight SpecialKey ctermfg=239
	
" nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


:nnoremap <S-s> :%s///gc
:nnoremap <Tab> :normal>>\n<CR>
:vmap <Tab> > gv
:nnoremap <S-Tab> :normal<<\n<CR>
:vmap <S-Tab> < gv
inoremap <S-Tab> <C-d>
inoremap <Tab> <C-t>
nnoremap <C-l> :!clear <CR><CR>
nnoremap <C-a> :! <CR>
vnoremap <C-y> :w !clip.exe <CR><CR>


inoremap <PageUp> <esc>:tabnext<CR>
inoremap <PageDown> <esc>:tabprevious<CR>

nnoremap <PageUp> :tabnext<CR>
nnoremap <PageDown> :tabprevious<CR>

inoremap <C-p> <esc>:tabnext<CR>
inoremap <C-o> <esc>:tabprevious<CR>
nnoremap <C-p> :tabnext<CR>
nnoremap <C-o> :tabprevious<CR>

let hlstate=0
nnoremap asd :if (hlstate == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=1-hlstate<cr>

:autocmd FileType python nnoremap <buffer> <C-b> :w<CR>:!python3 %<CR>
:autocmd FileType python nnoremap <buffer> <C-k> :w<CR>:!pytest %<CR>

:autocmd filetype php nnoremap <buffer> <c-s-b> :w<cr>:!php %<cr>

set foldmethod=indent
set foldopen-=block

set laststatus=2
set clipboard=unnamedplus
" set hlsearch

let g:vim_markdown_borderless_table = 1
let g:vim_markdown_auto_insert_bullets = 1
let g:vim_markdown_new_list_item_indent = 0
vnoremap <C-\> :TableFormat<CR>
