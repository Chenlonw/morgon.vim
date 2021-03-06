"""""""""""""""""""""""""""""""
"    My Vim Customization     "
"        Chenlong Wang        "
"     clwang88@gmail.com      "
"""""""""""""""""""""""""""""""

""" Set File types
autocmd BufEnter SConstruct* setfiletype python 
autocmd BufNewfile SConstruct* setfiletype python                                                                                               
autocmd BufEnter *.plg setfiletype gnuplot 
autocmd BufNewfile *.plg setfiletype gnuplot
autocmd BufRead *.md,*.mkd,*.markdown,*.mdwn set filetype=mkd
autocmd BufNewFile *.md,*.mkd,*.markdown,*.mdwn set filetype=mkd
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""" Basic configuration
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set cindent
set autoindent
set hls
syntax enable
set background=dark
colo desert
"colo darkblue
"colo solarized
set textwidth=100
set gfn=Monospace\ 13
autocmd InsertEnter * se cul    "under_line of current line

""" General Customization
vmap <C-r> :call InsertComment()<CR>
func! InsertComment()
	if &filetype=='c'
		exec "s/^/\\/\\//"
	endif 
	if &filetype=='cuda'
		exec "s/^/\\/\\//"
	endif 
	if &filetype=='cpp'
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
	if &filetype=='matlab'
		exec "s/^/%/"
	endif 
	if &filetype=='vim'
		exec "s/^/\"/"
	endif 
	if &filetype=='fortran'
		exec "s/^/!/"
	endif 
	if &filetype=='gnuplot'
		exec "s/^/#/"
	endif 
endfunc

vmap <C-f> :call CancleComment()<CR>
func! CancleComment()
	if &filetype=='c'
		exec "s/\\/\\///"
	endif 
	if &filetype=='cuda'
		exec "s/\\/\\///"
	endif 
	if &filetype=='cpp'
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
	if &filetype=='matlab'
		exec "s/%//"
	endif 
	if &filetype=='vim'
		exec "s/\"//"
	endif 
	if &filetype=='fortran'
		exec "s/!//"
	endif 
	if &filetype=='gnuplot'
		exec "s/#//"
	endif 
endfunc

autocmd BufNewFile *.cc,*.cpp,*.c,*.sh exec ":call SetTitleChlw()"
func! SetTitleChlw()
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
    endif
    autocmd BufNewFile * normal G
endfunc

autocmd BufNewFile SConstruct exec ":call SetTitle2Chlw()"
func! SetTitle2Chlw()
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

"set relative line number by vim-numbertoggle
function! NumberToggle()
	if(&number == 1 && &relativenumber == 1)
		set nonu 
	elseif(&relativenumber == 0 && &number == 0)
		set nu
	elseif(&number == 0 && &relativenumber == 1)
		set norelativenumber
	else
		set rnu
	endif
endfunc
nnoremap <C-a> :call NumberToggle()<cr>

"set highlightsearch
function! HighLightSearch()
	if(&hlsearch == 1)
		set nohls
	else
		set hls
	endif
endfunc
nnoremap <C-h> :call HighLightSearch()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""customize command in Filetype Python
augroup python 
autocmd Filetype python : imap <C-s> ${SOURCES[<++>]}
autocmd Filetype python : imap <C-t> ${TARGETS[<++>]}
autocmd Filetype python : imap <C-b> ['']<Esc>hi
autocmd Filetype python : nmap <S-r> : call InsertResult()<CR>
autocmd Filetype python : nmap <S-p> : call InsertPlot()<CR>
autocmd Filetype python : nmap <S-f> : call InsertFlow()<CR>
autocmd Filetype python : nmap <C-s> : call CompileSCons()<CR>
autocmd Filetype python : nmap <C-p> : call CompilePython()<CR>

"set file type as Python
func! CompilePython()
    exec "w"
    exec "! python %"
endfunc

func! InsertFlow() 
	exec "normal o\<CR>Flow('<++>',\<CR>'<++>',\<CR>'''\<CR><++>\<CR>'''\<CR>)\<Esc>\<Up>\<Up>\<Up>\<Up>\<Up>\<Up>"
endfunc

func! InsertResult() 
	exec "normal o\<CR>Result('<++>','<++>')\<Esc>"
endfunc

func! InsertPlot() 
	exec "normal o\<CR>Plot('<++>','<++>')\<Esc>"
endfunc

func! CompileSCons()
    exec "w"
    exec "! scons -Q"
endfunc
augroup END 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""customize command in Filetype Markdown
augroup markdown
autocmd Filetype markdown,md,mkd map <C-m> :InstantMarkdownPreview<CR>
augroup END 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""customize command in Filetype Latex
augroup Latex
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'evince'
autocmd Filetype tex : nmap <F2> : LLPStartPreview<CR>
autocmd Filetype tex : nmap <C-l> : call CompileLatex()<CR>
autocmd Filetype tex : nmap <C-x> : call CompileXeLatex()<CR>
autocmd Filetype tex : nmap <S-e> : call EvinceLatex()<CR>
autocmd Filetype tex : nmap <C-s> : call CompileSCons()<CR>
autocmd Filetype tex : imap <C-n> \new{}<Esc>li
autocmd Filetype tex : imap <C-o> \old{<Esc>

func! CompileLatex()
    exec "w"
    exec "!pdflatex % -interaction=nonstopmode -file-line-error-style"
endfunc                               

func! CompileXeLatex()
    exec "w"
    exec "!xelatex % -interaction=nonstopmode -file-line-error-style"
endfunc                               

func! EvinceLatex()
    exec "w"
    exec "!evince %<.pdf&"
endfunc                               

augroup END 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup JSON
autocmd Filetype json : nmap <C-j> : call Formatjson()<CR>
func! Formatjson()
    exec "%!python -m json.tool"
endfunc                               
augroup END 

"""customize command in Filetype C or Cpp or cuda
augroup C
"need with c.vim
autocmd Filetype c : nmap <F5> : call CompileRunGcc()<CR>
autocmd Filetype cpp : nmap <F5> : call CompileRunGcc()<CR>
autocmd Filetype cuda : nmap <F5> : call CompileRunGcc()<CR>
autocmd Filetype c : nmap <C-s> :call CompileSCons()<CR>
autocmd Filetype cpp : nmap <C-s> :call CompileSCons()<CR>
autocmd Filetype c : imap <C-b> ()<Esc>i
autocmd Filetype cpp : imap <C-b> ()<Esc>i
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %<"
        exec "! ./%<"
        exec "! rm ./%<"
    elseif &filetype == 'cc'
        exec "!g++ % -o %<"
        exec "! ./%<"
        exec "! rm ./%<"
    elseif &filetype == 'cuda'
        exec "!nvcc % -o %<"
        exec "! ./%<"
        exec "! rm ./%<"
    endif
endfunc                               
augroup END 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup GNUPLOT
	autocmd Filetype gnuplot : nmap <C-g> : call CompileRunGnuplot()<CR>
	func! CompileRunGnuplot()
		exec "w"
		exec "!gnuplot % "
	endfunc                               
augroup END 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Miscellaneous
map <F4> :call CompileMake()<CR>
func! CompileMake()
    exec "w"
    exec "! make"
endfunc

autocmd Filetype sh : nmap <F3> : call CompileShell()<CR>
func! CompileShell()
    exec "w"
    exec "! sh %<.sh"
endfunc

nmap <C-q> :call Savefile()<CR>
func! Savefile()
    exec "w"
endfunc

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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" customize the  Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""
"You Complete me
""""""""""""""""""""

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_invoke_completion = "<C-y>"

" YCM settings {{{
"let g:clang_library_path = "/usr/lib64/"
"let g:clang_complete_copen = 0
"let g:clang_hl_errors = 1
let g:clang_snippets = 1
let g:clang_snippets_engine = "ultisnips"
let g:clang_close_preview = 1
"let g:clang_complete_macros = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_use_ultisnips_completer = 1
"let g:ycm_key_list_select_completion=[]
"let g:ycm_key_list_previous_completion=[]
" }}}

"let g:UltiSnipsExpandTrigger="<C-h>"
"let g:UltiSnipsJumpForwardTrigger="<C-b>"
"let g:UltiSnipsJumpBackwardTrigger="<C-z>"
"let g:UltiSnipsSnippetsDir='~/.vim/UltiSnips'

" make YCM compatible with UltiSnips (using supertab)
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:UltiSnipsEditSplit="vertical"

""""""""""""""""""""
" Unite.vim
""""""""""""""""""""
"nmap <A-n> :call Openunitefile()<CR>
"func! Openunitefile()
"    exec "Unite file buffer"
"endfunc

""""""""""""""""""""
"airline syntasic
""""""""""""""""""""
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#syntastic#enabled = 1
"fix the airline only showup with split file
:set laststatus=2 

"customize the shortcut for Nerdtree
nnoremap <C-e> :NERDTreeToggle<CR>

"give the directory of language tool
:let g:languagetool_jar='$HOME/software/LanguageTool/LanguageTool-3.1/languagetool-commandline.jar'
nnoremap <S-r> : LanguageToolCheck <CR>
nnoremap <S-d> : LanguageToolClear <CR>


""""""""""""""""""""
"Indent guide
""""""""""""""""""""
"GVim
"let g:indentLine_color_gui = '#A4E57E'
":set list lcs=tab:\|\ 

"Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" solarized
let g:solarized_termcolors=256
let g:solarized_termtrans =1
let g:solarized_degrade=1
let g:solarized_bold=1  
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal" 

