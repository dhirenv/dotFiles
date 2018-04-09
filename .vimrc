" ~/.vimrc (configuration file for vim only)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle Setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" YouCompleteMe - Needs a newer VIM
" Plugin 'Valloric/YouCompleteMe'

" vim-fugitive (cool git stuff)
Plugin 'tpope/vim-fugitive'

" vim-surround
Plugin 'tpope/vim-surround'

" Git Gutter
Plugin 'airblade/vim-gitgutter'

" a.vim - Switch between Source and Header files
Plugin 'vim-scripts/a.vim'

" Color Schemes
Plugin 'flazz/vim-colorschemes'

" Syntax Files
Plugin 'sheerun/vim-polyglot'

" Tmuxline
" Bundle 'edkolev/tmuxline.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
set t_Co=256
colorscheme dracula

" associate *.sqli with sql filetype
au BufRead,BufNewFile *.sqli setfiletype sql

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Whitespace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Allow use of backspace in insert mode
set backspace=indent,eol,start

" Don't auto-insert new lines!!
set textwidth=0 wrapmargin=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase
set smartcase
set hlsearch
set incsearch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Formatting shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Format XML using ,x
map ,x :%!xmllint --format -<CR>

" Format JSON using ,j
map ,j :%!python -m json.tool<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual Stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set number
"set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status Line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi User1 ctermbg=black ctermfg=white
hi User2 ctermbg=red   ctermfg=blue  guibg=red   guifg=blue
hi User3 ctermbg=blue  ctermfg=green guibg=blue  guifg=green

set statusline=%1*%t\ [%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set laststatus=2          " Always show the Status line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>YCM Stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'info'
"let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_auto_trigger = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_cache_omnifunc = 1
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_identifier_candidate_chars = 0
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_semantic_triggers = {
  \   'c,objc' : ['->', '.'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'ocaml' : ['.', '#'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,d,vim,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
let g:ycm_filetype_whitelist = { 'c': 1, 'cpp': 1, 'cmake': 1, 'python': 1 }

" Useful Shortcuts
nnoremap <F3> :YcmCompleter GoTo<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <F9> :YcmCompleter FixIt<CR>


" ~/.vimrc ends here
