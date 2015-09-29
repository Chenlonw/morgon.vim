### This documents contains my customized shortcuts and some useful plugins with VIM
###### Author:Chenlong Wang, &nbsp;&nbsp; Email: clwang88@gmail.com

---

#### Use this file by command
```
git clone https://github.com/Chenlonw/morgon.vim.git ~/.vim
cd ~/.vim
ln -s vimrc ~/.vimrc
```
I installed the Vundle as the plugin control tool, Open a VIM and type :PluginInstall
Then you need install YouCompleteMe manually by:
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
+ Python.vim (indent for python)

---

#### My customized shortcuts
#### *Overall shortcuts*
+ jump to `<++>` by `ctrl+j`
+ switch line number type by `ctrl+a`

#### *Comment and uncomment (Only C, C++, Fortran, Python, Shell, LaTeX supported)*
+ `ctrl+r` in view mode, can comment your code
+ `ctrl+f` in view mode, can uncomment your code

#### *C and C++ program*
+ compile and excute a source code by `F5`

#### *Makefile*
+ excute a makefile by `F4`

#### *SConstruct*
+ insert a `Flow ( )` by `Shift+f`
+ insert a `Plot ( )` by `Shift+p`
+ insert a `Result ( )` by `Shift+r`
+ insert `${SOURCES[]}` by `Ctrl+s`
+ insert `${TARGETS[]}` by `Ctrl+t`
+ excute a scons by `ctrl+s`
+ set filetype as Python by `ctrl+p`

#### *Markdown related*
+ preview markdown with Google-Chrome by `ctrl+m`

#### *Latex related*
+ compile a latex file by `ctrl+l`
+ new comment by `ctrl+n`
+ strike through  by `ctrl+o`

---

#### Common shortcuts by plugins

#### *Latex-suite*
+ [cheetsheet](http://michaelgoerz.net/refcards/vimlatexqrc.pdf)

#### *Vim-easymotion*
+ jump to by `\\w`
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

