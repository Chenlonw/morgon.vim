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
+ airline
+ Python.vim (indent for python)
+ Unite (open file in vim)
+ Tabular (align text)
+ fugitive (Git wrapper)

---

### My customized shortcuts
#### *Overall shortcuts*
+ jump to `<++>` by `ctrl+j`
+ switch line number type by `ctrl+a`
+ switch highlight searching by `ctrl+h`

#### *Comment and uncomment (Only C, C++, Fortran, Python, Shell, LaTeX, Matlab, Vim supported)*
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

&nbsp;
##### Contact Info
+ **Chenlong Wang**, &nbsp;&nbsp; Email: clwang88@gmail.com
