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

### Tmux
My tmux configuration is very straight forward and fully commented. Of note, I
enable mouse mode, have custom colors, and have a custom clock script for the
status bar (`clocks.sh`).

### Git
My git configuration is a skeleton `gitconfig` file, and an always-growing
`gitignore` file.

### Bash
My `bashrc` includes a custom prompt, several PATH additions, and
several custom functions.

The `bashrc-remote` file I use for any remote environments I'm in. The prompt is
different, and some of the functions aren't included.

## To-Do
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
