" git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" BundleInstall

syntax on

set nocompatible               " be iMproved
set nu
set vb t_vb=
"set incsearch
set encoding=utf-8
set fileencodings=utf-8,gbk
"set autoindent
set rtp+=~/.vim/bundle/vundle/
set nobackup
set noswf
set foldmethod=syntax
set foldlevelstart=99
set cc=100
" show line and column at bar
set ruler
nnoremap <space> za

set list listchars=tab:»·,trail:·

call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/nerdtree'
Bundle 'msanders/snipmate.vim'
Bundle 'vim-coffee-script'
Bundle 'ngmy/vim-rubocop'
Bundle 'bronson/vim-trailing-whitespace'

" ctrlp for search files
Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](tmp|vendor|public|\.git|hg|svn)$',
  \ 'file': '\v\.(log|exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
" ctrl+o for LRU buffer
map <c-o> :CtrlPBuffer<CR>

Bundle 'tpope/vim-rvm'
" quickly move cursor, try ,,w 
Bundle 'Lokaltog/vim-easymotion'
"Bundle 'Yggdroot/indentLine'
Bundle 'scrooloose/nerdcommenter'
"Bundle 'junegunn/goyo.vim'
" For slim template
Bundle 'slim-template/vim-slim.git'

filetype off                   " required!
set smartindent
set autoindent
filetype plugin indent on


" sass highlight
Bundle 'JulesWang/css.vim'
Bundle 'cakebaker/scss-syntax.vim'
set iskeyword+=-


set tabstop=4
set shiftwidth=2
set expandtab
set mouse=a

let mapleader=","
colorscheme darkblue

autocmd BufNewFile,BufRead Gemfile set filetype=ruby

" for Goyo
"nmap <leader>g :Goyo<cr>
"let g:indentLine_color_term = 239
"let g:indentLine_char = '|'

"colorscheme darkblue

"打开鼠标功能
"set mouse=a

"set list
"set listchars=tab:▷⋅,trail:⋅,nbsp:⋅,eol:$

"指标符宽度
"set tabstop=4
"set shiftwidth=4
"set expandtab
"set smarttab

"设置NERDTree
"let g:NERDTreeMouseMode = 2
"let g:NERDTreeWinSize = 40

"设置竖线分隔
"set list listchars=tab:»·,trail:·
"autocmd FileType make     set noexpandtab
"autocmd FileType python   set noexpandtab
"autocmd FileType eruby  set tabstop=2 shiftwidth=2
"autocmd FileType ruby,rdoc set tabstop=2 shiftwidth=2
"autocmd FileType html set tabstop=2 shiftwidth=2
"autocmd FileType javascript set tabstop=2 shiftwidth=2
"autocmd FileType coffee set tabstop=2 shiftwidth=2
"au! BufRead,BufNewFile *.json setfiletype json


" Strip trailing whitespace
"function! <SID>StripTrailingWhitespaces()
"    "   Preparation :  save  last  search ,   and  cursor position .
"    echo expand("%:p")
"    if expand("%") =~ '_spec'
"        return
"    endif
"
"    if expand("%:p") =~ 'buychina'
"        let _s =@/
"        let l = line(".")
"        let c = col(".")
"        " Do the business:
"        %s/ \ s \+ $ //e
"        " Clean up: restore previous search history, and cursor position
"        let @/=_s
"        call cursor(l, c)
"    endif
"endfunction
"autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
"
"fun! StripTrailingWhitespace()
"    " Don't strip on these filetypes
"    if &ft =~ 'markdown'
"        return
"    endif
"    %s/\s\+$//e
"endfun
"
"autocmd BufWritePre * call StripTrailingWhitespace()

" 快捷键
"nmap <Up> <c-w>k
"nmap <Down> <c-w>j
"nmap <Right> <c-w>l
"nmap <Left> <c-w>h

"let g:rubycomplete_buffer_loading = 1
"let g:rubycomplete_classes_in_global = 1
"let g:rubycomplete_rails = 1

"nmap <F2> <c-w>w
"nmap <F3> :w!<cr>
"nmap <F4> :q!<cr>
"nmap <F8> gg=G<C-o>
"nmap nv :vsplit<cr>
"imap <F9> <c-y>,<cr>

" run current file with ruby
"map <F5> :echon system('ruby '.expand('%'))<cr>
"map cb :echon system('gedit '.expand('%'))<cr>

" open current buffer in new tab
"map cn :tab split<cr>

" 设置vim默认剪切版为系统剪切板
"set clipboard=unnamed

" remove backup file
"set nobackup
"set noswf

" 持久化存储
"set undofile
"set undodir=/home/soffolk/.tmp/undodir

"set colorscheme
"colorscheme 256-grayvim
"hi Normal ctermfg=252 ctermbg=none

"set for indentLine
"let g:indentLine_color_term = 239
" set ctrlp ignore
"set wildignore+=*/tmp/*,*.so,*.swp,*.swn,*.sws*.zip     " MacOSX/Linux
Bundle 'rking/ag.vim'
