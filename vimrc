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

"==========My customising==========
" comments
imap <C-c> //----- -----//<Esc>bhs

" insert a Flow in Madagascar in SConstruct
nmap <S-f> : call InsertFlow()<CR>
func! InsertFlow() 
	if &filetype=='python'
		exec "normal IFlow('',\<CR>\<BS>'<++>',\<CR>'''\<CR><++>\<CR>'''\<CR>)\<Esc>\<Up>\<Up>\<Up>\<Up>\<Up>\<Right>\<Right>"
	endif
endfunc

vmap <C-r> :call InsertComment()<CR>
func! InsertComment()
	if &filetype=='c'
		exec "s/^/\\/\\//"
	endif 
	if &filetype=='cc'
		exec "s/^/\\/\\//"
	endif 
	if &filetype=='python'
		exec "s/^/#/"
	endif 
	if &filetype=='sh'
		exec "s/^/#/"
	endif 
	if &filetype=='tex'
		exec "s/^/%/"
	endif 
	if &filetype=='fortran'
		exec "s/^/!/"
	endif 
endfunc

vmap <C-f> :call CancleComment()<CR>
func! CancleComment()
	if &filetype=='c'
		exec "s/\\/\\///"
	endif 
	if &filetype=='cc'
		exec "s/\\/\\///"
	endif 
	if &filetype=='python'
		exec "s/#//"
	endif 
	if &filetype=='sh'
		exec "s/#//"
	endif 
	if &filetype=='tex'
		exec "s/%//"
	endif 
	if &filetype=='fortran'
		exec "s/!//"
	endif 
endfunc

"instant markdowchronologicaln
autocmd Filetype markdown,md,mkd map <C-m> :InstantMarkdownPreview<CR>

" Linux Vim from website
autocmd InsertEnter * se cul    "under_line of current line

"Define file title of a new file
autocmd BufNewFile *.cc,*.cpp,*.c,*.sh exec ":call SetTitle()"
func SetTitle()
    if &filetype == 'sh'
        call setline(1,"\#########################################################################")
        call append(line("."), "\# File Name: ".expand("%"))
        call append(line(".")+1, "\# Description: <++>")
        call append(line(".")+2, "\# Author: Chenlong Wang")
        call append(line(".")+3, "\# mail: clwang88@gmail.com")
        call append(line(".")+4, "\# Created Time: ".strftime("%c"))
        call append(line(".")+5, "\#########################################################################")
        call append(line(".")+6, "\#!/bin/bash")
        call append(line(".")+7, "")
        call append(line(".")+8, "<++>")
    else
        call setline(1, "/*************************************************************************")
        call append(line("."), "    Copyright @2015 Tongji University")
        call append(line(".")+1, "    > File Name: ".expand("%"))
        call append(line(".")+2, "    > Description: <++>")
        call append(line(".")+3, "    > Author: Chenlong Wang")
        call append(line(".")+4, "    > Mail: clwang88@gmail.com")
        call append(line(".")+5, "    > Created Time: ".strftime("%c"))
        call append(line(".")+6, " ************************************************************************/")
        call append(line(".")+7, "")
    endif
    if &filetype == 'cpp' 
        call append(line(".")+8, "#include<<++>>")
        call append(line(".")+9, "")
        call append(line(".")+10, "using namespace std;")
        call append(line(".")+11, "int main (int argc, char *argv[])")
        call append(line(".")+12, "{")
        call append(line(".")+13, "	<++>")
		call append(line(".")+14, "	exit(0);")
        call append(line(".")+15, "}")
    endif
    if &filetype == 'c'
        call append(line(".")+8, "#include<<++>>")
        call append(line(".")+9, "")
        call append(line(".")+10, "int main (int argc, char *argv[])")
        call append(line(".")+11, "{")
        call append(line(".")+12, "	<++>")
		call append(line(".")+13, "	exit(0);")
        call append(line(".")+14, "}")
    endif

    autocmd BufNewFile * normal G
endfunc

autocmd BufNewFile SConstruct exec ":call SetTitle2()"
func SetTitle2()
	call setline(1,"\#########################################################################")
	call append(line("."), "\# Description:<++>")
	call append(line(".")+1, "\# Author: Chenlong Wang")
	call append(line(".")+2, "\# mail: clwang88@gmail.com")
	call append(line(".")+3, "\# Created Time: ".strftime("%c"))
	call append(line(".")+4, "\#########################################################################")
	call append(line(".")+5, "")
	call append(line(".")+6, "from rsf.proj import *")
	call append(line(".")+7, "")
	call append(line(".")+8, "<++>")
	call append(line(".")+9, "")
	call append(line(".")+10, "End()")
    autocmd BufNewFile * normal G
endfunc

"Set F5 to compile your c or c++ code
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %<"
        exec "! ./%<"
    elseif &filetype == 'cc'
        exec "!g++ % -o %<"
        exec "! ./%<"
    endif
endfunc                               

map <C-l> :call CompileLatex()<CR>
func! CompileLatex()
    exec "w"
    exec "!pdflatex %"
endfunc                               

map <F4> :call CompileMake()<CR>
func! CompileMake()
    exec "w"
    exec "! make"
endfunc

nmap <C-s> :call CompileSCons()<CR>
func! CompileSCons()
    exec "w"
    exec "! scons"
endfunc

"set file type as Python
nmap <C-p> :call Setfilepython()<CR>
func! Setfilepython()
    exec "setf python"
endfunc

"shutcut for review
imap <C-n> \new{}<Esc>li
imap <C-o> \old{<Esc>

func! MyToHtml(line1, line2)
  " make sure to generate in the correct format
  let old_css = 1
  if exists('g:html_use_css')
    let old_css = g:html_use_css
  endif
  let g:html_use_css = 0

  " generate and delete unneeded lines
  exec a:line1.','.a:line2.'TOhtml'
  %g/<body/normal k$dgg

  " convert body to a table
  %s/<body\s*\(bgcolor="[^"]*"\)\s*text=\("[^"]*"\)\s*>/<table \1 cellPadding=0><tr><td><font color=\2>/
  %s#</body>\(.\|\n\)*</html>#\='</font></td></tr></table>'#i

  " restore old setting
  let g:html_use_css = old_css
endfunc
command! -range=% MyToHtml :call MyToHtml(<line1>,<line2>)

