# Load various lib files
antigen bundle robbyrussell/oh-my-zsh lib/

#
# Antigen Theme
#

# antigen theme jdavis/zsh-files themes/jdavis

#
# Antigen Bundles
#

antigen bundles <<EOBUNDLES

 git
 tmuxinator
 zsh-users/zsh-syntax-highlighting
 zsh-users/zsh-history-substring-search
 rupa/z

# For SSH, starting ssh-agent is annoying
 ssh-agent

# Node Plugins
 coffee
 node
 npm

# Python Plugins
 pip
 python
 virtualenv
EOBUNDLES

# OS specific plugins
if [[ $CURRENT_OS == 'OS X' ]]; then
    antigen bundle brew
    antigen bundle brew-cask
    antigen bundle gem
    antigen bundle osx
elif [[ $CURRENT_OS == 'Linux' ]]; then
    # None so far...

    if [[ $DISTRO == 'CentOS' ]]; then
        antigen bundle centos
    fi
elif [[ $CURRENT_OS == 'Cygwin' ]]; then
    antigen bundle cygwin
fi

# antigen bundle jdavis/zsh-files

# Syntax highlighting bundle.
# antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# antigen theme robbyrussell

# Tell antigen that you're done.
antigen apply
