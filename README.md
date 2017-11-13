# Dot Files

Configuration files (often called dot-files because they start with a ".") for
the applications I use on a regular basis. 

### Requirements

You'll need `make` for the automated linking of the dotfiles.  Obviously you'll
need the related program for each config file to be applicable.

## Installation
> 1. git clone git@github.com:VagabondAzulien/dotfiles.git
>
> 2. cd dotfiles
>
> 3. Type `make` to see your options

## Applications Configured

### Vim
My vim configuration is relatively straight forward and thoroughly commented.

#### Plugin File
The vimrc-plugins file stores the plugin information for
[Vim-Plug](https://github.com/junegunn/vim-plug). Included in the file is a
command to check for and pull-down the vim-plug files, if not previously
installed. All configurations related to plugins goes into this file also, so if
I want a plugin-free install, I can ignore this file and still run fine.

Notable Plugins
* [Fugitive](https://github.com/tpope/vim-fugitive) for nice Git integration.
* [Polyglot](https://github.com/sheerun/vim-polyglot) for language files.
* [vimwiki](https://github.com/vimwiki/vimwiki) for info, diary and notes.
* [goyo](https://github.com/junegunn/goyo.vim) for zen-like text editing.

### Tmux
My tmux configuration is very straight forward and fully commented. Of note, I
enable mouse mode, and have custom colors configured.

#### Tmux Plugins
- [TPM](https://www.github.com/tmux-plugins/tpm): The TMUX Plugin Manager
- [Scroll-Wheel Copy Mode](https://www.github.com/nhdaly/tmux-scroll-copy-mode)

#### Custom Scripts
- clocks.sh: My custom status bar. Shows time for 4 different time zones.

### Git
My git configuration is a skeleton `gitconfig` file, and an always-growing
`gitignore` file. Unlike most other files, the `gitconfig` file isn't symlinked,
since it changes based on which machine I'm on.

### Bash
My bash configuration includes a custom prompt, several PATH additions, and
several custom functions. Nothing crazy, nothing revolutionary, but definitely
some improvements for my environment.

The `bashrc-remote` file I use for any remote environments I'm in. The prompt is
different, and some of the functions aren't included.

## To-Do
* [ ] irssi config files
* [ ] Improve makefile

## License
All files are licensed under the [WTFPL](http://www.wtfpl.net/), the full
license text of which can be found below.

> **DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE**
>
> _Version 2, December 2004_ || 
> _Copyright (C) 2004 Sam Hocevar <sam@hocevar.net>_
>
> Everyone is permitted to copy and distribute verbatim or modified 
> copies of this license document, and changing it is allowed as long 
> as the name is changed. 
>
> DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE 
> TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION 
>
>     0. You just DO WHAT THE FUCK YOU WANT TO.
