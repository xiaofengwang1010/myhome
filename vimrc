" Load external configuration before anything else {{{
if filereadable(expand("~/.vim/before.vimrc"))
  source ~/.vim/before.vimrc
endif
" }}}

" Load vim bundle configuration {{{
if filereadable(expand("~/.vim/vundle.vimrc"))
  source ~/.vim/vundle.vimrc
endif
" }}}

" Load addidional configuration (ie to overwrite shorcuts) {{{
if filereadable(expand("~/.vim/after.vimrc"))
  source ~/.vim/after.vimrc
endif
" }}}
