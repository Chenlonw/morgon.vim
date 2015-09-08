### This documents contains my customised shortcuts with VIM
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

#### *Overall shortcuts*
+ jump to `<++>` by `ctrl+j`

#### *Comment and uncomment (Only C, C++, Fortran, Python, Shell, LaTeX supported)*
+ `ctrl+r` in view mode, can comment your code
+ `ctrl+f` in view mode, can uncomment your code

#### *C and C++ program*
+ insert a comment by `ctrl+c`
+ compile and excute a source code by `F5`

#### *Makefile*
+ excute a makefile by `F4`

#### *SConstruct*
+ insert a `Flow ( )` by `Shift+f`
+ insert a `Plot ( )` by `Shift+p`
+ insert a `Result ( )` by `Shift+r`
+ excute a scons by `ctrl+s`
+ set filetype as Python by `ctrl+p`

#### *Markdown related*
+ preview markdown with Google-Chrome by `ctrl+m`

#### *Latex related*
+ compile a latex file by `ctrl+l`
+ new comment by `ctrl+n`
+ strike through  by `ctrl+o`

