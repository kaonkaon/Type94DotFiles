
lua << EOF

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

EOF


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
set wildmode=longest,list
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
set clipboard=unnamedplus
set autoread
set completeopt
set hidden
set completeopt=menu,preview
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

syntax on

" set laststatus=2
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" set Packer
lua require('plugins')

" Plugins Settings
let g:lightline = {'colorscheme': 'icebergDark'}
let NERDTreeShowHidden=1
let g:startify_files_number=5

function! s:filter_header(lines) abort
	let longest_line = max(map(copy(a:lines), 'len(v:val)'))
	let centered_lines = map(copy(a:lines), 'repeat(" ",(&columns / 2) - (longest_line /2 )) . v:val')
	return centered_lines
endfunction

colorscheme gruvbox

let g:startify_custom_header = s:filter_header(['ゔぃむだよぉ'])
let g:move_key_modifier='C'    
let g:qs_highlight_on_keys=['f', 'F', 't', 'T']
map / <Plug>(easymotion-sn)
map / <Plug>(easymotion-tn)
map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua << EOF

vim.opt.termguicolors = true

require("nvim-tree").setup()

EOF
