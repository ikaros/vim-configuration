Description
===========

These are my vim config files. They work for me, it's fine if you
also can use them. I mostly use MacVim on OSX 10.6 so if there
are any issues on other platform fork me and send me an pull request.

thx ;-)
Konsi


Get up and running
==================

Please move your old .vimrc, .gvim and .vim out of the way.

<code>
 git clone https://ikaros@github.com/ikaros/vim-configuration.git ~/.vim
 cd ~/.vim
 git submodule update --init
 rake place_vim_config
 cd bundle/syntastic
 rake install
</code>
