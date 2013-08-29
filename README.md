## Installation ##

Clone this repo with:

    git clone git://github.com/pinifloyd/vim-dotfiles.git ~/.vim

Create symlinks with:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules with:

    cd ~/.vim
    git submodule init
    git submodule update

## How To ##

Install some plugin as a git submodule:

    cd ~/.vim
    git submodule add **url_to_plugin**.git bundle/**plugin_name**
    git add .
    git commit -m "Install **plugin_name** bundle as a git submodule."

Upgrading a plugin bundle:

    cd ~/.vim/bundle/**plugin_name**
    git pull origin master

Upgrading all bundled plugins:

    cd ~/.vim
    git submodule foreach git pull origin master

## Bundles ##

*   vim-pathogen
*   ack.vim