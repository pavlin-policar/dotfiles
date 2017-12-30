set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Plugin list

" Fuzzy search
Plugin 'kien/ctrlp.vim'

" Insert quotes or parens around objects
Plugin 'tpope/vim-surround'

" Snippets
Plugin 'SirVer/ultisnips'

" Better % matching for LaTex, HTML and more
Plugin 'vim-scripts/matchit.zip'

" Linters, syntax checkers, etc...
"Plugin 'scrooloose/syntastic'

" Makes JSON sane
Plugin 'elzr/vim-json'

" End of plugin list

call vundle#end()
filetype plugin indent on
