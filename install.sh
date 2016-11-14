#!/bin/zsh

function install() {
    echo "symlinking EVERYTHING"

    for i in mpv muttrc tmux.conf vimperatorrc xboxdrv.conf; do
        _link $i ~/.$i
    done

    _link bin ~/bin
    _link feh ~/.config/feh

    mkdir ~/.config/git/
    _link gitconfig ~/.config/git/config


}

function _link() {
    local absolute="$(pwd)/$1"
    echo "linking $absolute to $2"
    unlink $2
    ln -s $absolute $2
}

install
