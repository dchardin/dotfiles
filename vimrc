
set nocompatible              " be iMproved, required
filetype off                  " required

set laststatus=2
set statusline+=%F\ %l\:%c
set colorcolumn=80

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'GitGutter'
Plugin 'SQLComplete.vim'
Plugin 'Unite.vim'
"Plugin 'command-t'
Plugin 'commentary.vim'
Plugin 'delimitMate'
Plugin 'nerdTree'
"Plugin 'sparkup'
Plugin 'surround.vim'
"Plugin 'ultisnips'
Plugin 'vim-easymotion'
Plugin 'vim-scripts/DrawIt'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}

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

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"****************END*VUNDLE*CONFIG********************

" show line numbers
set number

" set tabs to have 4 spaces
" set ts=4

"indent when moving to the next line while writing code
"set autoindent

" expand tabs into spaces
" set expandtab

" show the matching part of the pair for [] {} and ()
" set showmatch

set ai
" activates filetype detection
filetype plugin indent on

" activates syntax highlighting among other things
syntax on

" allows you to deal with multiple unsaved
" buffers simultaneously without resorting
" to misusing tabs
set hidden

" just hit backspace without this one and
" see for yourself
set backspace=indent,eol,start

set background=dark

" Show tabs and trailing characters.
"set listchars=tab:»·,trail:·,eol:¬
set listchars=tab:»·,trail:·
set list

" Reformat paragraphs and list.
nnoremap <Leader>r gq}

" Delete trailing white space and Dos-returns and to expand tabs to spaces.
nnoremap <Leader>t :set et<CR>:retab!<CR>:%s/[\r \t]\+$//<CR>

autocmd BufRead,BufNewFile *.txt,*.asciidoc,README,TODO,CHANGELOG,NOTES,ABOUT
\ setlocal autoindent expandtab tabstop=8 softtabstop=2 shiftwidth=2 filetype=asciidoc
\ textwidth=70 wrap formatoptions=tcqn
\ formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\\|^\\s*<\\d\\+>\\s\\+\\\\|^\\s*[a-zA-Z.]\\.\\s\\+\\\\|^\\s*[ivxIVX]\\+\\.\\s\\+
\ comments=s1:/*,ex:*/,://,b:#,:%,:XCOMM,fb:-,fb:*,fb:+,fb:.,fb:>
