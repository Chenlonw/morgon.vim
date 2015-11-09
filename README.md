## This documents contains my customized shortcuts and some useful plugins with VIM


#### Use this file by command
```
git clone https://github.com/Chenlonw/morgon.vim.git ~/.vim
cd ~/.vim
ln -s vimrc ~/.vimrc
```
I installed the Vundle as the plugin control tool, you need to install it firstly by
```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
and then open a VIM and type :PluginInstall in command mode  
After installing the Vundle you need to install YouCompleteMe manually by:
```
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```

**list of Plugins**
+ YouCompleteMe
+ Vim-easymotion
+ C.vim
+ DrawIt
+ Vim-multiple-cursors
+ Latex-suite
+ Airline
+ Python.vim (indent for python)
+ Tabular (align text)
+ Fugitive (Git wrapper)
+ Nerdtree (working folder)
+ LanguageTool (gramma checker)

---

### My customized shortcuts
#### *Overall shortcuts*
+ jump to `<++>` by `ctrl+j`
+ switch line number type in normal mode by `ctrl+a`
+ switch highlight searching in normal mode by `ctrl+h`

#### *Comment and uncomment (Only C, C++, Fortran, Python, Shell, LaTeX, Matlab, Vim supported)*
+ `ctrl+r` in view mode, can comment your code
+ `ctrl+f` in view mode, can uncomment your code

#### *C and C++ program*
+ compile and excute a source code by `F5`

#### *Makefile*
+ excute a makefile by `F4`

#### *SConstruct*
+ insert a `Flow ( )` in normal mode by `Shift+f`
+ insert a `Plot ( )` in normal mode by `Shift+p`
+ insert a `Result ( )` in normal mode by `Shift+r`
+ insert `${SOURCES[]}` in insert mode by `Ctrl+s`
+ insert `${TARGETS[]}` in insert mode by `Ctrl+t`
+ insert `['']` in insert mode by `Ctrl+b`
+ excute a scons by `ctrl+s`
+ set filetype as Python by `ctrl+p`

#### *Markdown related*
+ preview markdown with Google-Chrome by `ctrl+m`

#### *Latex related*
+ compile a latex file by `ctrl+l`
+ display a corresponding pdf file with evince by `Shift+e`

---

### Common shortcuts by plugins

#### *Latex-suite*
+ [cheetsheet](http://michaelgoerz.net/refcards/vimlatexqrc.pdf)

#### *YouCompleteMe*
+ semantic completion can be triggered by `ctrl+y`

#### *Vim-easymotion*
+ jump to forward by `\\w`
+ jump to forward in line by `\\j`
+ jump to backward by `\\b`
+ jump to backward in line by `\\k`
+ find and jump by `\\f`

#### *C.vim*
+ [cheetsheet](http://lug.fh-swf.de/vim/vim-c/c-hotkeys.pdf)

#### *DrawIt*
+ begin by `\di`
+ end by `\ds`
+ move and draw by `Up Down Left Right`
+ move by `Shift + Up Down Left Right`

#### *Vim-multiple-cursors*
+ choose words by `ctrl+n`
+ jump forward or backward words by `ctrl+x or p`

#### *Vim-Teris*
+ start by `\te`

#### *Vim Tabular*
+ start by `:Tab /*`

#### *Vim NERDtree*
+ start by `Ctrl+e`

#### *Vim LanguageTool*
You need download the LanguageTool from [LanguageTool](https://www.languagetool.org/)
+ customized your installation directory by setting `:let g:languagetool_jar='$HOME/Your/Installation/Directory/languagetool-commandline.jar'`
+ toggle in normal mode by `Shift+r`
+ stop in normal mode by `Shift+f`

&nbsp;
##### Contact Info
+ **Chenlong Wang**, &nbsp;&nbsp; Email: clwang88@gmail.com
