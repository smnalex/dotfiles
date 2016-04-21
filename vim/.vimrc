execute pathogen#infect()

let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
" <TAB>: completion.
 inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

let g:airline#extensions#tabline#enabled = 1

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

colorscheme luna-term
syntax on
filetype plugin indent on

"tmp files
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

"cpy to clipboard
set clipboard^=unnamed

"hl search
set hlsearch


filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set noesckeys

set relativenumber
set number
set backspace=2

"mapping
let mapleader = ","

"Split screens
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"Split screen resize
map - :vertical resize -1<CR>
map = :vertical resize +1<CR>
"Disable arrow
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>



set shortmess=I

"
map <leader>l :Explore<cr> 

"vim go"
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>v <Plug>(go-vet)
au FileType go nmap <Leader>n <Plug>(go-lint)
let g:go_fmt_command = "goimports"

"ctrl+p
set runtimepath^=~/.vim/bundle/ctrlp.vim
"neard
map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * if !argc() | NERDTree | endif

"Buffers
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>
" Always show tab bar
set showtabline=2
set guitablabel=%N:%M%t
set smarttab

"Status line
set statusline=%f
set statusline+=%y

"Clear search buffer
:nnoremap <CR> :nohlsearch<cr>
:nnoremap W :%s/ *$//g<cr><c-o><cr>:nohlsearch<cr>

" show whitespace
 set list listchars=tab:\ \ ,trail:·

"Remove bar char
:set fillchars+=vert:\ 

set fillchars+=vert:│
hi VertSplit ctermbg=NONE guibg=NONE

"Tab bars
nmap <F5> :TagbarToggle<CR>


