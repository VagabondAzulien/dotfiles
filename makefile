#===============================================================================
# Makefile for niblock dotfiles || $ make for options
#===============================================================================
.PHONY: help \
     link-dotfiles \
     build-default \
     build-simple \
     clean-all \
     install-vim-config \
     install-vim-dir \
     install-vim-plugin \
     install-git \
     install-tmux \
     install-bash-config \
     install-bash-profile \
     install-irssi

.DEFAULT-GOAL := help
#===============================================================================
# Utility
#===============================================================================
help:			## Display this menu
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
        awk 'BEGIN {FS = ":.*?## "}; {printf "%-25s %s\n", $$1, $$2}'

link-dotfiles:		## Create dotfiles link in Home directory
	ln -s -- "$(CURDIR)" "$(HOME)"/.dotfiles
#===============================================================================
# Bundles
#===============================================================================
build-default:		## Create default environment, using all dotfiles
build-default: link-dotfiles \
     install-vim-config \
     install-vim-dir \
     install-vim-plugin \
     install-git \
     install-tmux \
     install-bash-config \
     install-bash-profile \
     install-irssi

build-simple:		## Create minimal environment, for remote or single-use
build-simple: install-vim-config \
     install-bash-profile

clean-all:		## Remove all dotfiles linked via this makefile

#===============================================================================
# Dotfiles
#===============================================================================
install-vim-config:	## Create vimrc file in Home directory
	@if [ -L "$(HOME)"/.vimrc ] ; then \
	       echo "File vimrc already linked; skipping." ; \
	  else \
	       echo "Linking vimrc to ~/.vimrc" ; \
	       ln -s -- "$(CURDIR)"/vim/vimrc "$(HOME)"/.vimrc ; \
	  fi

install-vim-plugin:	## Create vimrc-plugins (Plugin file) in Home directory
	@if [ -L "$(HOME)"/.vimrc-plugins ] ; then \
	       echo "File vimrc-plugins already linked; skipping." ; \
	  else \
	       echo "Linking vimrc-plugins to ~/.vimrc-plugins" ; \
	       ln -s -- "$(CURDIR)"/vim/vimrc-plugins "$(HOME)"/.vimrc-plugins ; \
	  fi

install-vim-dir:	## Create vim directory in Home directory
	@if [ -L "$(HOME)"/.vim ] ; then \
	       echo "Vim directory already linked; skipping." ; \
	 else \
	       echo "Linking vim/ to ~/.vim" ; \
		   ln -s -- "$(CURDIR)"/vim/vim/ "$(HOME)"/.vim ; \
	 fi

install-git:		## Create git config and ignore files in Home directory
	cp -i -- "$(CURDIR)"/git/gitconfig "$(HOME)"/.gitconfig
	@if [ -L "$(HOME)"/.gitignore ] ; then \
	       echo "File gitignore already linked; skipping." ; \
	  else \
	       echo "Linking gitignore to ~/.gitignore" ; \
	       ln -s -- "$(CURDIR)"/git/gitignore "$(HOME)"/.gitignore ; \
	  fi

install-tmux:		## Create tmux config file in Home directory
	@if [ -L "$(HOME)"/.tmux.conf ] ; then \
	       echo "File tmux.conf already linked; skipping." ; \
	  else \
	       echo "Linking tmux.conf to ~/.tmux.conf" ; \
	       ln -s -- "$(CURDIR)"/tmux/tmux.conf "$(HOME)"/.tmux.conf ; \
	  fi

install-bash-config:	## Create bash config file in Home directory

install-bash-profile:	## Cretae bash profile file in Home directory

install-irssi:		## Create irssi directory and file in Home directory
