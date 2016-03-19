# Makefile for Niblock Dotfiles

.PHONY: help \
     link-dotfiles \
     build-default \
     build-simple \
     install-vim-config \
     install-vim-plugin \
     install-git \
     install-tmux \
     install-bash-config \
     install-bash-profile \
     install-irssi

.DEFAULT-GOAL := help

help:			## Display this menu
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
        awk 'BEGIN {FS = ":.*?## "}; {printf "%-25s %s\n", $$1, $$2}'

link-dotfiles:		## Create dotfiles link in Home directory
	ln -s -- "$(CURDIR)" "$(HOME)"/.dotfiles/

build-default:		## Create default environment, using all dotfiles
build-default: link-dotfiles \
     install-vim-config \
     install-vim-plugin \
     install-git \
     install-tmux \
     install-bash-config \
     install-bash-profile \
     install-irssi

build-simple:		## Create minimal environment, for remote or single-use
build-simple: install-vim-config \
     install-bash-profile

install-vim-config:	## Create vimrc file in Home directory
	ln -s -- "$(CURDIR)"/vim/vimrc "$(HOME)"/.vimrc

install-vim-plugin:	## Create vimrc-plugins (Plugin file) in Home directory
	ln -s -- "$(CURDIR)"/vim/vimrc-plugins "$(HOME)"/.vimrc-plugins

install-git:		## Create git config and ignore files in Home directory
	ln -s -- "$(CURDIR)"/git/gitconfig "$(HOME)"/.gitconfig
	ln -s -- "$(CURDIR)"/git/gitignore "$(HOME)"/.gitignore

install-tmux:		## Create tmux config file in Home directory
	ln -s -- "$(CURDIR)"/tmux/tmux.config "$(HOME)"/.tmux.config

install-bash-config:	## Create bash config file in Home directory

install-bash-profile:	## Cretae bash profile file in Home directory

install-irssi:		## Create irssi directory and file in Home directory
