#!/usr/bin/env bash

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

[ -f $HOME/.bashrc ] && source $HOME/.bashrc

