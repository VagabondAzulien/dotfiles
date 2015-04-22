#Vim Configuration Files

My vim configuration is relatively straight forward.

###RC File
* Word-wrap is set to 80 characters
* Spaces not tabs; tab-length set to 5
* Wild menu

###Directory
Additionally, I have several extensions, as submodules, in .vim/bundle:
* [Fugitive](https://github.com/tpope/vim-fugitive) for nice Git integration.
* [Airline](https://github.com/bling/vim-airline) to look nice, but not garish.
* [Sneak](https://github.com/justinmk/vim-sneak) for getting around.
* [Vinegar](https://github.com/tpope/vim-vinegar) for a convenient directory
  browser.
* and [Pathogen](https://github.com/tpope/vim-pathogen) to do the hard work.

###Utilization
To use these configuration, perform the following steps

1. Copy or sim-link vimrc to .vimrc in your home directory
> cp vimrc ~/.vimrc
>
> -+ or +-
>
> ln ~/.vimrc vimrc

2. Copy the vim directory to .vim in your home directory
> cp -r vim ~/.vim

This process is currently unautomated, and as such any updates to this
repository will need to be manually copied as above.

####To-Do
* [ ] Implement [dotbot](https://github.com/anishathalye/dotbot) for automation.
* [ ] Customize Airline more.
* [ ] Consider adding [gist-vim](https://github.com/mattn/gist-vim) due to
  prevalence of Gist at work
* [ ] Consider adding [vim-notes](https://github.com/xolox/vim-notes) and/or
  [vimwiki](https://github.com/vimwiki/vimwiki) for notes

