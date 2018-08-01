set nocompatible " be iMproved"
set autoindent "Auto indention should be on"
set clipboard=unnamed

" For vundle"
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"

" Snippets for our use :)"
Bundle 'garbas/vim-snipmate'

" Git tools"
Bundle 'tpope/vim-fugitive'

" Dependency managment"
Bundle 'gmarik/vundle'

" Rails :/"
Bundle 'tpope/vim-rails.git'

" Commenting and uncommenting stuff"
Bundle 'tomtom/tcomment_vim'

" Molokai theme"
Bundle 'tomasr/molokai'

" Vim Ruby"
Bundle 'vim-ruby/vim-ruby'

" Every one should have a pair (Autogenerate pairs for {[( )"
Bundle 'jiangmiao/auto-pairs'

" Tab completions"
Bundle 'ervandew/supertab'

" Fuzzy finder for vim (CTRL+P)"
Bundle 'kien/ctrlp.vim'

" For tests"
Bundle 'janko-m/vim-test'

" Navigation tree"
Bundle 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line"
call vundle#end() " required"

" Ruby stuff: Thanks Ben :)"
" ================"
syntax on                 " Enable syntax highlighting"
filetype plugin indent on " Enable filetype-specific indenting and plugins"

augroup myfiletypes
	" Clear old autocmds in group"
	autocmd!
	" autoindent with two spaces, always expand tabs"
	autocmd FileType ruby,eruby,yaml,markdown set ai sw=2 sts=2 et
augroup END
" ================"

" Syntax highlighting and theme"
syntax enable

" Lovely linenumbers"
set nu

" Searching Highlights the areas"
set hlsearch

set ignorecase

set smartcase

" Run test files - current test with ,c and under cursor with ,s"
map <Leader>c :call <CR>
nmap <silent> <leader>c :TestFile<CR>

" Don't be a noob, join the no arrows key movement"
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Removing escape pressing jj to Normal mode"
ino jj <esc>
cno jj <c-c>
vno v <esc>
nmap <silent> <leader>s :TestNearest<CR>

" ,Enter removes any search highlight"
nmap <Leader><CR> :nohlsearch<cr>

" ,q Opens and closes Nerdtree."
map <leader>q :NERDTreeToggle<CR>
