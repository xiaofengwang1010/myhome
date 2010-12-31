#!/bin/shell

ln_it_to_home()
{
    if [ -z "$1" ]; then
        return 1
    fi

    target_name="$1"

    ln -s -n -v `pwd -P`/"$target_name" $HOME/."$target_name"

    return $?
}

ln_it_to_home "autotest"
ln_it_to_home "autotest_images"

ln_it_to_home "bashrc"
ln_it_to_home "bash_aliases"
ln_it_to_home "bashrc_oracle"
ln_it_to_home "bashrc_xfun68"

ln_it_to_home "gitconfig"

ln_it_to_home "tmux.conf"

ln_it_to_home "vim"
ln_it_to_home "vimrc"

ln_it_to_home "rvmrc"
