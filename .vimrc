set nocompatible
set showcmd
set exrc
set secure
set showmode
set mouse+=a
set number
set wrap
set history=500
set so=7
set wildmenu
set ruler
set cmdheight=1
set ignorecase
set smartcase
set hlsearch
set lazyredraw
set showmatch
set mat=2
set smarttab
set laststatus=2

set autoread
au FocusGained,Bufenter * checktime

map <space> /
map <C-space> ?
" map <Leader>m(easymotion-prefix)

filetype plugin on
filetype indent on

augroup project
	autocmd!
	autocmd BufRead,BufNewFile *.h.*.c set filetype=c.doxygen
augroup END

" helptags $HOME/.vim/doc/

syntax on

" set laststatus=2
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'markonm/traces.vim'
Plug 'previm/previm'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/lightline.vim'
Plug 'mattn/vim-maketable'
Plug 'easymotion/vim-easymotion'
Plug 'osyo-manga/vim-anzu'
Plug 'mhinz/vim-startify'
Plug 'gkeep/iceberg-dark'
Plug 'cocopon/iceberg.vim'
" Plug 'tabnine/YouCompleteMe'
" Plug 'https://github.com/lilyjdwg/colorizer' 
Plug 'matze/vim-move'
Plug 'unblevable/quick-scope'
" Plug 'romgrk/barbar.nvim'
Plug 'dkarter/bullets.vim'

" Initialize plugin system
call plug#end()

set background=dark
colorscheme iceberg
let g:lightline = {'colorscheme': 'icebergDark'}
let NERDTreeShowHidden=1
" let g:startify_custom_header="Vim Dayo"
" let g:head = [
" 			\
" 			\ 'Vim だおぉ',
" 			\ ]
" g:startify_custom_header = g:head
" g:startify_padding_left = 3
"
let g:startify_files_number=5

function! s:filter_header(lines) abort
	let longest_line = max(map(copy(a:lines), 'len(v:val)'))
	let centered_lines = map(copy(a:lines), 'repeat(" ",(&columns / 2) - (longest_line /2 )) . v:val')
	return centered_lines
endfunction

let g:startify_custom_header = s:filter_header(['ゔぃむだよぉ'])
let g:move_key_modifier='C'    
let g:qs_highlight_on_keys=['f', 'F', 't', 'T']
map / <Plug>(easymotion-sn)
map / <Plug>(easymotion-tn)
map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)
