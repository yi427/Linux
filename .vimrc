set history=200
set number
set tabstop=4
set shiftwidth=4
" Flod line
set nowrap
set hlsearch
set smartindent
set ruler
set syntax=on
set wildmode=longest,list
" preview the first march
set incsearch
" 设置查找时反转颜色并且前景色为黑色，背景色为黄色
hi Search term=reverse ctermfg=0 ctermbg=3

" 设置包管理器
set nocompatible " be IMproved, required
filetype off	 " required

" set the runtime path to include Yundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " packet manager
Plugin 'jamessan/vim-gnupg'	  " gpg password manager
Plugin 'jiangmiao/auto-pairs' " braces expend
Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
Plugin 'dense-analysis/ale'

call vundle#end()
filetype plugin on " by the file type select the plugin and indent
" 包管理器设置完毕

" set the Gpg password manager
let g:GPGPreferArmor=1
let g:GPGDefaultRecipients=["troubilll@outlook.com"]

" set the auto-pairs
let g:AutoPairsShortcutFastWrap = '<C-d>e'
let g:AutoPairsShortcutJump = '<C-d>n'
inoremap <C-d>d <ESC>xa
inoremap <C-d>f <ESC>xi


" set the airline
let g:airline#extension#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

" set the ale configure
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" Just saved the file enable the linters
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0
" Set the gcc standard
let g:ale_cpp_cc_options = '-std=c++20 -Wall'
