## My Environment ##

*    Homebrew v0.9.4
*    MacVim v7.4 (+ruby)                        <= Homebrew
*    Rvm 1.21.13 (stable)
*    Ruby 2.0.0p247 (2013-06-27 revision 41674) <= RVM
*    Ruby 1.8.7 (2012-02-08 patchlevel 358)     <= System

## Bundles ##

*   [vim-pathogen](https://github.com/tpope/vim-pathogen)
*   [ack.vim](https://github.com/mileszs/ack.vim)
*   [bufexplorer](https://github.com/corntrace/bufexplorer)
*   [Command-T](https://github.com/wincent/Command-T)
*   [tComment](https://github.com/vim-scripts/tComment)
*   [NERD Tree](https://github.com/scrooloose/nerdtree)
*   [Supertab](https://github.com/ervandew/supertab)
*   [CoffeeScript](https://github.com/kchmck/vim-coffee-script)
*   [jQuery](https://github.com/vim-scripts/jQuery)
*   [ZoomWin](https://github.com/vim-scripts/ZoomWin)
*   [VimPowerline](https://github.com/Lokaltog/vim-powerline)

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

## How To Install Command-T for MacVim v7.4 ##

    rvm --default 2.0.0
    brew update
    brew install macvim
    brew linkapps
    cd ~/.vim/bundle/command-t/ruby/command-t
    rvm use system
    ruby extconf.rb
    make
    rvm --default 2.0.0
