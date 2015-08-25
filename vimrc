" The Vimrc configuration file by Chenlong Wang
" Email : clwang88@gmail.com

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
