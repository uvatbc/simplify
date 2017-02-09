" ***************************************
" For Vundle
" ***************************************
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
Plugin 'rdnetto/YCM-Generator'
Plugin 'plasticboy/vim-markdown'
Plugin 'godlygeek/tabular'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ***************************************
filetype plugin indent on
syntax on
:color desert

set autoindent

set softtabstop=4 shiftwidth=4 tabstop=4 expandtab
set foldmethod=syntax
set number

" if expands with full quotes
imap <silent> if<CR>   if<Space>()<Space>{<CR>}<Up><End><Left><Left><Left>
" do0 expands to cleanup block
imap <silent> do0<CR>   do<Space>{<Space>//<Space>Begin<Space>cleanup<Space>block<Space>(not<Space>a<Space>loop)<CR>}while(0);<Space>//<Space>End<Space>cleanup<Space>block<Space>(not<Space>a<Space>loop)<Up><Esc>o
" Cm Cn will add function name comment
nmap <silent> <C-m><C-n>  <Home>[{y^<End>]}p<Home><Right>i//<Esc>

" YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_always_populate_location_list = 0
let g:ycm_auto_trigger=1
let g:ycm_min_num_identifier_candidate_chars=0
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_open_loclist_on_ycm_diags=1
let g:ycm_show_diagnostics_ui=1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_filetype_blacklist={
            \ 'vim' : 1,
            \ 'tagbar' : 1,
            \ 'qf' : 1,
            \ 'notes' : 1,
            \ 'markdown' : 1,
            \ 'md' : 1,
            \ 'unite' : 1,
            \ 'text' : 1,
            \ 'vimwiki' : 1,
            \ 'pandoc' : 1,
            \ 'infolog' : 1,
            \ 'mail' : 1
            \}
