if &compatible
  set nocompatible
endif

" dein base directory.
let s:dein_dir = expand('~/.cache/dein')

" dein repository directory.
let s:dein_repo = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" vim setting directory.
let g:base_dir = fnamemodify(expand('<sfile>'), ':h') .. '/'

" plugins toml-file directory.
let s:toml_dir = g:base_dir ..'toml/'


if &runtimepath !~# '/dein.vim'
    if !isdirectory(s:dein_repo)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo
    endif
    execute 'set runtimepath^=' . s:dein_repo
endif

if dein#min#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    let s:dein_toml = s:toml_dir .. 'dein.toml'
    let s:dein_lazy_toml = s:toml_dir .. 'lazy.toml'

    " read toml and cache
    call dein#load_toml(s:dein_toml, {'lazy': 0})
    call dein#load_toml(s:dein_lazy_toml, {'lazy': 1})

    " end settings
    call dein#end()
    call dein#save_state()
endif


if dein#check_install()
    call dein#install()
endif

filetype plugin indent on
syntax enable

execute'source'g:base_dir.'options.vim'
execute'source'g:base_dir.'keybinds.vim'
