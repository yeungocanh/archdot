function! DoRemote(arg)
    UpdateRemotePlugins
endfunction
call plug#begin()

Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'ervandew/supertab'
Plug 'burnettk/vim-angular'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'
Plug 'carlitux/deoplete-ternjs'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'wakatime/vim-wakatime'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'pangloss/vim-javascript'


call plug#end()

syntax enable
filetype plugin indent on
map <C-c> "+y<CR>

""""""" Jedi-VIM """""""
set colorcolumn=120
set laststatus=2
set updatetime=250
set encoding=utf-8
set shiftwidth=4 
set tabstop=4 
set expandtab 
set autoindent
set number showmatch
set mouse=a
let python_highlight_all = 1
let g:deoplete#enable_at_startup = 1
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#force_py_version=2

let g:gitgutter_max_signs=10000
let python_highlight_all = 1
let g:jedi#show_call_signatures = "0"

"""colorscheme
colorscheme gruvbox
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
autocmd FileType python setlocal completeopt-=preview
let g:used_javascript_libs = 'angularjs,jquery'

set background=dark
let g:enable_bold_font = 1
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'
let g:deoplete#enable_at_startup = 1
let g:indentLine_char = '┆'
let g:indentLine_color_term = 239
map <C-p> :FZF<CR>

let g:gruvbox_italicize_strings=1
let g:gruvbox_improved_warnings=1
let g:gruvbox_improved_strings=1

let g:tern#command = ["/usr/bin/tern"]
let g:used_javascript_libs = 'jquery,angularjs'

