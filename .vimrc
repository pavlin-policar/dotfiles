""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Load plugins from vundle
source ~/.vim/plugins.vim

set history=700

filetype indent on
filetype plugin on

set autoread
set lazyredraw

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ignore case when searching
set ignorecase
set smartcase

" Start searching before pressing enter
set incsearch

" enable magic when using regexp
set magic

set relativenumber " show relative line numbers
set number " show the current line number instead of the zero
set showmatch

set encoding=utf8
let base16colorspace=256  " Access colors present in 256 colorspace
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"

set laststatus=2 " Always enable status line
" Color the status line green when in insert mode
" if version >= 700
  " au InsertEnter * hi StatusLine term=reverse ctermbg=5 ctermfg=2
  " au InsertLeave * hi StatusLine term=reverse ctermbg=8 ctermfg=8
" endif

" Always show at least 3 lines above/below the cursor
set scrolloff=3

" Highlight any characters that reach over 80 characters
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn=81

" Don't break lines on 80 characters
set formatoptions-=t

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and pretty things
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable

colorscheme materialbox
set background=dark

set list
set listchars=eol:¬,trail:·
set showbreak=↪

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, Tabs and Indent related goodness
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set autoindent
set smartindent
set wrap

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remaps
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Navigating splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Leader keys
let mapleader = ','

" Map system clipboard
vnoremap <leader>yy :w !xsel -i -b<CR>
nnoremap <leader>pp :r!xsel -p<CR>

nnoremap <leader>vrc :e $MYVIMRC<CR>
nnoremap <leader>vrcp :e ~/.vim/plugins.vim<CR>
nnoremap <leader>vrcr :source ~/.vimrc<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Splits
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Natural split, open new split to the right or to the bottom
set splitbelow
set splitright

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Automatically reload the vimrc on save
augroup reload_vimrc
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" Enable spellchecking for git commits
autocmd FileType gitcommit setlocal spell

" Trim trailing whitespace
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction
autocmd BufWritePre * :call TrimWhiteSpace()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ctrlp
let g:ctrlp_show_hidden=1

" UltiSnips
" Triggers
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" Make UltiSnips open edit window in split
let g:UltiSnipsEditSplit="vertical"
" Apparently, it wants to place the snippets in my home directory
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 4
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

