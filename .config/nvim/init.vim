" ##########################
" #          SETS          #
" ##########################

:set number
:set nocompatible
:set showmatch
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set softtabstop
:set expandtab
:set mouse=a
:set clipboard=unnamedplus
:set cursorline
:set ttyfast
:set smarttab
:set noswapfile

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

:filetype plugin indent on
:filetype plugin on
:syntax on

:set encoding=UTF-8


" ##########################
" #      PLUGINS CALL      #
" ##########################

call plug#begin()

" Automatic vim-plug installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/vim-scripts/c.vim'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/scrooloose/syntastic'
Plug 'https://github.com/preservim/tagbar'

call plug#end()


" ##########################
" #        KEYBINDS        #
" ##########################

nnoremap <C-t> :NERDTreeToggle<CR>


" ##########################
" #          LETS          #
" ##########################

let g:airline_theme='iceberg'
let g:airline#extensions#tabline#enabled = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_airline_tabline = 1
let g:airline_powerline_fonts=1

let  g:C_UseTool_cmake    = 'yes'
let  g:C_UseTool_doxygen = 'yes'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

