#!/bin/bash

if [ -f ~/.vimrc ]; then
	echo "vimrc already exists, backing it up"
	mv ~/.vimrc ~/vimrc{,_bk}
fi
echo "linking vimrc file"
ln -nfs `pwd`/vim/vimrc ~/.vimrc

if [ -f ~/.gvimrc ]; then
	echo "gvimrc already exists, backing it up"
	mv ~/.gvimrc ~/gvimrc{,_bk}
fi
echo "linking gvimrc file"
ln -nfs `pwd`/vim/gvimrc ~/.gvimrc

if [ -d ~/.vim ]; then
	echo "vim already exists, backing it up"
	mv ~/.vim ~/vim{,_bk}
fi
echo "linking vimfile"
ln -nfs `pwd`/vim ~/.vim
