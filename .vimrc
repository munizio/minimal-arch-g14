set nocompatible
set number
set nowrap

set autoindent
set cindent

syntax on

set backspace=indent,eol,start
set tabstop=2 shiftwidth=2 expandtab softtabstop=2

let g:python_recommended_style = 0
filetype plugin indent on
autocmd FileType python setlocal shiftwidth=2 softtabstop=2 expandtab

" Vim-Plug install and Plugins

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-python'
  \ ]

" let g:polyglot_disabled = ['typescript']

call plug#end()

" Color Scheme and Theme

"if (has('termguicolors'))
"  set termguicolors
"endif

let g:material_terminal_italics = 1
let g:material_theme_style = 'ocean'
colorscheme material

" lightline.vim configuration
set laststatus=2
let g:lightline = { 'colorscheme': 'material_vim' }

" ansible-yml configuration
let g:ansible_name_highlight = 'b'

" NetRW Customization
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

map <leader>f :FZF<CR>
