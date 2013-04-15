""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" REQUIRED!
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Your bundles here
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'scrooloose/nerdtree'

Bundle 'mileszs/ack.vim'

Bundle 'Lokaltog/vim-easymotion'

Bundle 'sjl/gundo.vim'

Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/peaksea'

Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

Bundle 'scrooloose/nerdcommenter'

Bundle 'godlygeek/tabular'
Bundle 'vim-scripts/Align'

Bundle 'quentindecock/vim-cucumber-align-pipes'

Bundle 'robbevan/Vagrantfile.vim'

Bundle 'vim-ruby/vim-ruby'
Bundle 'bbommarito/vim-slim'
Bundle 'juvenn/mustache.vim'

Bundle 'msanders/snipmate.vim'
Bundle 'rstacruz/sparkup'

Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-ragtag'

Bundle 'gregsexton/gitv'

Bundle 'mattn/zencoding-vim'

Bundle 'michaeljsmith/vim-indent-object'

Bundle 'avakhov/vim-file-line'

Bundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_start_level = 4

Bundle 'tComment'
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

Bundle 'vim-scripts/ZoomWin'
command Z ZoomWin

Bundle 'lucapette/codepath.vim'
nnoremap <silent> <F4> :NERDTreeToggle `=codepath#path ()`<cr>
inoremap <silent> <F4> <Esc>:NERDTreeToggle `=codepath#path()`<cr>

Bundle 'gmarik/sudo-gui.vim'
Bundle 'gmarik/github-search.vim'
let g:github_search_path_format = '~/code/github_repo/:repo'

Bundle 'AndrewRadev/splitjoin.vim'
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

Bundle 'kien/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlPMixed'
set wildignore+=*/tmp/*,*/cassettes/*,*.so,*.swp,*.zip,*.log

Bundle 'Shougo/neocomplcache'
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

if has('gui_running')
  Bundle 'Lokaltog/vim-powerline'
  let g:Powerline_symbols = 'fancy'
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Following lines are examples
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"Bundle 'rails.vim'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" REQUIRED!
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
