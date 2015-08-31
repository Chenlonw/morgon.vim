" The Vimrc configuration file by Chenlong Wang
" Email : clwang88@gmail.com


" My Vundle setup file
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'tpope/vim-fugitive'

Plugin 'easymotion/vim-easymotion'

Plugin 'ervandew/supertab'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

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

" SetThe SConstruct as the python file type
autocmd BufEnter SConstruct setfiletype python 
autocmd BufNewfile SConstruct setfiletype python                                                                                               
" markdown filetype file
autocmd BufRead *.md,*.mkd,*.markdown,*.mdwn set filetype=mkd
autocmd BufNewFile *.md,*.mkd,*.markdown,*.mdwn set filetype=mkd

" Basic configuration
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set cindent
set autoindent
set hls

syntax enable
colo desert

set textwidth=100
set gfn=Monospace\ 13

"latex preview
"========================================
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'evince'
nmap <F2> :LLPStartPreview<cr>

" Latex suite related
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
"set shellslash 

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
"========================================

"You Complete me
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
