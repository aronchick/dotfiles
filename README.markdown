This repository holds my configuration files so that I can clone them to other machines
easily.

#Installation

    git clone git://github.com/aronchick/dotfiles.git ~/dotfiles
	
# Updating
There are several git submodules included in this configuration. On a new
installation these submodules need to be initialized and updated.

    cd ~/dotfiles
    git submodule init 
    git submodule update 

It is also possible to use `git pull` to update the submodules.

    cd ~/dotfiles
    git submodule foreach git pull origin master

Vundle managed Vim bundles maybe updated from the command line via

    vim +BundleInstall +qall

#Setup
## Homebrew
On those Mac OS machines where I install Homebrew I also edit `/etc/paths` to move the `/usr/local/bin` entry to the top of the list. This ensures that Homebrew-managed programs and libraries occur prior to `/usr/bin` and system-provided programs and libraries. The resulting `/etc/paths` files looks like this:

    /usr/local/bin
    /usr/bin
    /bin
    /usr/sbin
    /sbin
    
## zsh
For zsh configuration create the following symlinks:

    ln -sf ~/dotfiles/zsh ~/.zsh
    ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc
    ln -sf ~/dotfiles/zsh/zshenv ~/.zshenv
    ln -sf ~/dotfiles/zsh/zprofile ~/.zprofile
    ln -s ~/dotfiles/ohmyzsh .oh-my-zsh
## ssh
For ssh configuration, create the following symlink:

    ln -sf ~/dotfiles/ssh/config ~/.ssh/config

## Vim
For Vim configuration and use, create the following symlinks:

    ln -sf ~/dotfiles/vim ~/.vim
    ln -sf ~/dotfiles/vim/vimrc ~/.vimrc
    ln -sf ~/dotfiles/vim/gvimrc ~/.gvimrc

To install Vim bundles, which are managed via Vundle, via the command line run

    vim +BundleInstall +qall

From inside of Vim run

    :BundleInstall

## bash
For those machines where zsh isn't installed or won't easily work, create the
following symlinks:

    ln -sf ~/dotfiles/bash/bash_profile ~/.bash_profile
    ln -sf ~/dotfiles/bash/bashrc ~/.bashrc
    ln -sf ~/dotfiles/bash/bash_aliases ~/.bash_aliases
    ln -sf ~/dotfiles/bash/bash_history ~/.bash_history

## Git
For Git configuration and global ignore files, create these symlinks:

    ln -sf ~/dotfiles/git/gitconfig ~/.gitconfig
    ln -sf ~/dotfiles/git/gitignore_global ~/.gitignore_global

For machines where Sublime Text 2 cannot be installed, link
`git/gitconfig_remote` instead. This will use `vimdiff` as the merge and diff
tool rather than ST2.

## Mercurial (hg)
For Mercurial configuration and global ignore files, create these symlinks:

    ln -sf ~/dotfiles/hg/hgrc ~/.hgrc
    ln -sf ~/dotfiles/hg/hgignore_global ~/.hgignore_global
	

## TextMate (mate)
For TextMate 2 settings create the following symlink:

    ln -sf ~/dotfiles/textmate/tm_properties ~/.tm_properties

## tmux (terminal multiplexer) configuration
For tmux configuration create this symlink:

    ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

My tmux setup also uses tmux-powerline for the status bar. Add the tmux-powerlinerc to the home directory.

    ln -sf ~/dotfiles/tmux/tmux-powerlinerc ~/.tmux-powerlinerc

## Sublime Text 2 (subl)
Install Package Control following the instructions here: http://wbond.net/sublime_packages/package_control

For Sublime Text 2 settings, remove the `User` directory from
`~/Library/Application Support/Sublime Text 2/Packages`. Then add this symlink:

    cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages
    ln -sf ~/dotfiles/sublimetext/User User

Finally, to enable the command line tool, `subl`, add this symlink:

    ln -sf /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

##z
To enable z directory function from https://github.com/rupa/z, source the
`z.sh` script in the `.zshrc` file: 

    source ${HOME}/dotfiles/z/z.sh
	
