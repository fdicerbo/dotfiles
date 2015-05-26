dotfiles
========

My own configuration files for bash, git, vim, and others

*UPDATE IN PROGRESS*


Installation Vim Plugins
========================

1. do a "git submodule update" in order to update all vim submodules in vim/.vim/bundle . All process relies on Vundle
2. to use Vundle to install all plugins, copy .vimrc from vim/.vim and then open vim and type ":PluginInstall"
3. cd ~/.vim/bundle/YouCompleteMe
4. git submodule update --init --recursive
5. ./install.sh --clang-completer
6. at this point, everything should be installed

Installation Bash Completion
============================

1. copy all .bash* to ~
