#Vim Configuration Files

My vim configuration is relatively straight forward.

##Config File
* Word-wrap is set to 80 characters
* Mappings to quickly edit dotfiles
* Relative numbering, with mapping to quickly swap

##Bundles File
The vimrc.bundles file stores the plugin information for
[Vim-Plug](https://github.com/junegunn/vim-plug). Included in the file is a
command to check for and pull-down the vim-plug files, if not previously
installed. All configurations related to plugins goes into this file also, so if
I want a plugin-free install, I can ignore this file and still run fine.

####Notable Plugins
* [Fugitive](https://github.com/tpope/vim-fugitive) for nice Git integration.
* [Airline](https://github.com/bling/vim-airline) to look nice, but not garish.
* [Vinegar](https://github.com/tpope/vim-vinegar) for a file browsing.
* [Templates](https://github.com/ap/vim-templates.git) for easy templates.
* [vimwiki](https://github.com/vimwiki/vimwiki) for info, diary and notes.
* [Startify](https://github.com/mhinz/vim-startify) for a nice start-page
* [Syntastic](https://github.com/scrooloose/syntastic) for syntax checking.

##To-Do
* [ ] Customize Airline more (Optional)
* [ ] Consider adding [gist-vim](https://github.com/mattn/gist-vim) due to
  prevalence of Gist at work
* [ ] Get color situtated.
