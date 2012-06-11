filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set nocompatible

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set autoindent
set encoding=utf-8
set showmode
set showcmd
set visualbell
set ttyfast
set cursorline
set ruler

" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

colorscheme molokai

set tags+=~/.tags/tags

set ofu=syntaxcomplete#Complete

function! SuperCleverTab()
    if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
        return "\<Tab>"
    else
        if &omnifunc != ''
            return "\<C-X>\<C-O>"
        elseif &dictionary != ''
            return "\<C-K>"
        else
            return "\<C-N>"
        endif
    endif
endfunction

inoremap <Tab> <C-R>=SuperCleverTab()<cr>
