#!/bin/sh

BASE_DIR=`dirname $0`
CONF_DIR="${BASE_DIR}/conf"

sudo pacman --needed -S emacs zsh gvim vim vagrant qemu libvirt chromium awesome ruby jdk8-openjdk clojure nodejs

ln -s ${CONF_DIR}/_emacs.d ~/.emacs.d
ln -s ${CONF_DIR}/_zshrc ~/.zshrc
ln -s ${CONF_DIR}/_vim ~/.vim
ln -s ${CONF_DIR}/_vimrc ~/.vimrc
ln -s ${CONF_DIR}/_gvimrc ~/.gvimrc
