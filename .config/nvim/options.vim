"
" Editor setting
"
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,sjis,iso-2022-jp,euc-jp
set fileformats=unix,dos
set autoread
set nobackup
set noswapfile
set ambiwidth=single
set clipboard+=unnamedplus

"
" Row setting
"
set number
set relativenumber
set cursorline

"
" Search setting
"
set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan

"
" Indent setting
"
set smartindent
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

"
" Window setting
"
set laststatus=3
set wildmenu

"
" Display Invisible Characters setting
"
set list
set listchars=tab:»-,space:･,trail:･,nbsp:%,eol:↲,extends:»,precedes:«


augroup change_filetype_setting
  autocmd!
  autocmd BufNewFile,BufRead *.blade.php set syntax=html
  autocmd BufNewFile,BufRead *.blade.php set filetype=html
augroup END

augroup indent_setting
  autocmd!
  autocmd FileType c           setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType ruby        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType js          setlocal sw=4 sts=4 ts=4 et
  autocmd FileType zsh         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType python      setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scala       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType json        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType css         setlocal sw=2 sts=2 ts=2 et
  autocmd FileType scss        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType sass        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType javascript  setlocal sw=2 sts=2 ts=4 et
  autocmd FileType php         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType uml         setlocal sw=4 sts=4 ts=4 et
augroup END
