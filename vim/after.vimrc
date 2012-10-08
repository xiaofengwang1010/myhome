" Inspired by:
" https://github.com/gmarik/vimfiles/blob/master/vimrc

" TODO
" http://zanshin.net/2011/11/15/using-vim/

" General "{{{
set nocompatible

set history=10000      " Number of things to remember in history.
set timeoutlen=800     " Time to wait after ESC
set clipboard+=unnamed " Yanks go on clipboard instead.
set pastetoggle=<F10>  " Toggle between paste and normal: for 'safer' pasting from keyboard
set shiftround         " Round indent to multiple of 'shiftwidth'
set tags=./tags;$HOME  " Walk directory tree upto $HOME looking for tags

set modeline
set modelines=5        " Default numbers of lines to read for modeline instructions

set autowrite          " Writes on make/shell commands
set autoread

" Backup
set backup
set nowritebackup
set backupdir=~/.tmp_files/vim/backups
set directory=~/.tmp_files/vim/tmp
set backupskip=/tmp/*,/private/tmp/*"

" The current buffer can be put to the background without writing to disk Match
"+and search
set hidden

set hlsearch
set incsearch
set ignorecase
set smartcase
map <silent> <leader><cr> :noh<cr>

" Encoding settings
set encoding=utf-8
set fenc=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936,big5,euc-jp,euc-kr,latin1

" Use english for default help language
set helplang=cn

try
  lang en_US
catch
endtry

set fileformats=unix,dos,mac

" Smart way to resize windows
map - <C-W>-
map + <C-W>+
map ( <C-W><
map ) <C-W>>

let g:is_posix = 1             " vim's default is archaic bourne shell, bring it up to the 90s

let mapleader      = ","
let g:mapleader    = ","
let maplocalleader = ","
" "}}}

" Formatting "{{{
set formatoptions=t    " Auto-wrap text using textwidth
set formatoptions+=c   " Auto-wrap comments using textwidth, inserting the
                       "+current comment leader automatically.
set formatoptions+=m   " Also break at a multi-byte character above 255.
set formatoptions+=M   " When joining lines, don't insert a space before or
                       "+after a multi-byte character.

set nowrap
set textwidth=0

set tabstop=2          " Set the default tabstop
set softtabstop=2
set shiftwidth=2       " Set the default shift width for indents
set expandtab          " Make tabs into spaces (set by tabstop)
set smarttab           " Smarter tab levels

set backspace=indent
set backspace+=eol
set backspace+=start

set autoindent
set cindent
set indentkeys-=0#            " do not break indent on #
set cinkeys-=0#
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do,for,switch,case
" "}}}

" Visual "{{{
syntax enable
filetype plugin indent on

set colorcolumn=81

" Set 1 line to the curors - when moving vertical..
set so=1

set ruler

set mouse=a
set mousehide

set number
set showmatch
set matchtime=2

set wildmode=longest,list

set completeopt+=preview

set novisualbell
set noerrorbells
set vb t_vb=

set laststatus=2
set shortmess=atI
set showcmd

set statusline=%<%f\          " custom statusline
set statusline+=[%{&ff}]             " show fileformat
set statusline+=%y%m%r%=
set statusline+=%-14.(%l,%c%V%)\ %P

set foldenable
set foldmethod=marker
set foldlevel=100

set foldopen=block,hor,tag    " what movements open folds
set foldopen+=percent,mark
set foldopen+=quickfix

set splitbelow
set splitright

set list                      " display unprintable characters f12 - switches
set listchars=tab:\ .
set listchars+=trail:·
set listchars+=extends:»,precedes:«
map <silent> <F11> :set invlist<CR>

if has('gui_running')
  set guioptions=cMg " console dialogs, do not show menu and toolbar

  " Fonts
  if has('mac')
    set guifont=Andale\ Mono:h13
  else
    set guifont=Terminus:h16
  end

  if has('mac')
    set noantialias
    set fullscreen
    set fuoptions=maxvert,maxhorz
  endif
endif
" "}}}

" Key mappings " {{{
" Duplication
nnoremap <silent> <LocalLeader>bi :BundleInstall<CR>
nnoremap <silent> <LocalLeader>bc :BundleClean<CR>
nnoremap <silent> <LocalLeader>bl :BundleList<CR>
nnoremap <silent> <LocalLeader>bs :BundleSearch<CR>

nnoremap <leader>c mz"dyy"dp`z
vnoremap <leader>c "dymz"dP`z

nnoremap <silent> <LocalLeader>so :source ~/.vimrc<CR>
nnoremap <silent> <LocalLeader>rc :edit   ~/.vimrc<CR>

" Tabs (not working on Mac)
"nnoremap <C-H> :bp<CR>
"nnoremap <C-L> :tabnext<CR>

" Change shiftwidth locally
map <leader>t2 :setlocal shiftwidth=2<cr>
map <leader>t4 :setlocal shiftwidth=4<cr>
map <leader>t8 :setlocal shiftwidth=8<cr>

" Buffers
nnoremap <localleader>- :bd<CR>
nnoremap <localleader>-- :bd!<CR>

" Split line(opposite to S-J joining line)
nnoremap <silent> <C-J> gEa<CR><ESC>ew

" Copy filename
map <silent> <leader>. :let @+=expand('%:p').':'.line('.')<CR>

map <leader>e :Vexplore!<CR><C-W>=

nmap <leader>q :wqa<CR>
nmap <leader>u :update<CR>
imap jj <Esc>
imap jk <Esc>

" Make Control-direction switch between windows (like C-W h, etc)
nmap <silent> <C-k> <C-W><C-k>
nmap <silent> <C-j> <C-W><C-j>
nmap <silent> <C-h> <C-W><C-h>
nmap <silent> <C-l> <C-W><C-l>

" Generate HTML version current buffer using current color scheme
map <leader>2h :runtime! syntax/2html.vim<CR>

" Bash style key binding in command mode
cmap <c-a> <home>
cmap <c-e> <end>
cnoremap <c-b> <left>
cnoremap <c-d> <del>
cnoremap <c-f> <right>
cnoremap <c-n> <down>
cnoremap <c-p> <up>
cnoremap <esc><c-b> <s-left>
cnoremap <esc><c-f> <s-right>

" Tab configuration
map <leader>to :tabnew<cr>
map <leader>td :tabclose<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>te :tabedit 
map <leader>tm :tabmove 

" Parenthesis/bracket expanding
vnoremap @( <esc>`>a)<esc>`<i(<esc>
vnoremap @[ <esc>`>a]<esc>`<i[<esc>
vnoremap @{ <esc>`>a}<esc>`<i{<esc>
vnoremap @" <esc>`>a"<esc>`<i"<esc>
vnoremap @' <esc>`>a'<esc>`<i'<esc>

" Map auto complete of (, ", ', [
inoremap @( ()<esc>i
inoremap @[ []<esc>i
inoremap @{ {}<esc>i
inoremap @} {<esc>o}<esc>O
inoremap @" ""<esc>i
inoremap @' ''<esc>i

" In visual mode when you press * or # to search for the current selection
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSearch('gv')<CR>
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

" From an idea by Michael Naumann
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
" "}}}

" AutoCommands " {{{
au BufRead,BufNewFile {Gemfile,Rakefile,Capfile,*.rake,config.ru} set ft=ruby tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab
au BufRead,BufNewFile {*.md,*.mkd,*.markdown}                     set ft=markdown
au! BufReadPost       {COMMIT_EDITMSG,*/COMMIT_EDITMSG}           set ft=gitcommit noml list| norm 1G
au! BufWritePost      *.snippet                                   call ReloadAllSnippets()
" Open help in vertical split
au BufWinEnter *.txt if &ft == 'help' | wincmd H | endif
" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc
" Auto generate and load views
autocmd BufWinLeave *.* silent mkview
autocmd BufWinEnter *.* silent loadview
autocmd BufReadPost fugitive://* set bufhidden=delete
" " }}}

" Abbrevs "{{{
iab #e # encoding: UTF-8
iab xdate <c-r>=strftime("%Y/%m/%d %H:%M:%S")<cr>
iab xpry require 'pry'; binding.pry
iab bpry binding.pry
" "}}}
