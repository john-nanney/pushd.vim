# Small Implementation of pushd/popd/dirs

Like pushd, popd, and dirs in your shell? Now you can do the same thing in
vim.

I wrote this to have a nice, small script to use pushd and popd in vim. There
are other plugins for this, but they are fairly large, and depend on other
plugins.

## Usage

    :pushd PATH

Save current directory on the stack, and change directory to PATH.

    :pushd

With no arguments, change directory to your home.

    :popd

Change directory to the most recent on the stack, and remove it from the stack.

    :dirs

List the directories in the stack, most recent last.

## Install

Either copy the files into your .vim directory, or if you use pathogen:

    cd ~/.vim/bundle

    git clone https://github.com/john-nanney/pushd.vim

## Bugs

Probably. Send me an email, or better yet a patch.

# Moved to Gitlab

Due to the purchase of Github, this repository will be removed. Development is now on Gitlab https://gitlab.com/john-nanney/pushd.vim
