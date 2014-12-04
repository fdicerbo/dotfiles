set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Autocomplete awesomeness
Plugin 'marijnh/tern_for_vim'

Plugin 'Valloric/YouCompleteMe'
	let g:ycm_add_preview_to_completeopt=0
	let g:ycm_confirm_extra_conf=0
	set completeopt-=preview

" Fantastic snippets
Plugin 'SirVer/ultisnips'
	let g:UltiSnipsExpandTrigger="<c-j>"
	let g:UltiSnipsJumpForwardTrigger="<c-j>"
	let g:UltiSnipsJumpBackwardTrigger="<c-k>"
	let g:UltiSnipsEditSplit="vertical"
	let g:UltiSnipsSnippetsDir="~/.vim/snippets"

Plugin 'tpope/vim-fugitive'

Plugin 'Chiel92/vim-autoformat'
    " https://github.com/beautify-web/js-beautify
    :nnoremap <F3> :Autoformat<CR>
    let g:formatprg_javascript = "js-beautifier"
    let g:formatprg_args_expr_javascript = '"-w80 -s".&shiftwidth'
    let g:formatprg_java = "astyle"
    let g:formatprg_args_expr_java = '" --mode=java --style=java --add-brackets --break-after-logical --max-code-length=80 --break-closing-brackets -pcHs".&shiftwidth'
    " let g:formatprg_args_expr_javascript = '"--mode=java --style=java -pcHs".&shiftwidth'
"    let g:formatprg_args_expr_cs = '"--mode=java --style=java -s".&shiftwidth'
"
Plugin 'kien/ctrlp.vim'
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux"
    let g:ctrlp_working_path_mode = 'ra'
    let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

Plugin 'tomtom/tcomment_vim'

Plugin 'xolox/vim-easytags'

Plugin 'xolox/vim-misc'

Plugin 'bling/vim-airline'
    let g:airline#extensions#tabline#enabled=1
    let g:airline_left_sep=' '
    let g:airline_right_sep=' '
    let g:airline_powerline_fonts = 1

Plugin 'edkolev/promptline.vim'
    let g:promptline_powerline_symbols=0
    let g:promptline_theme = 'airline'
    let g:promptline_preset = 'clear'
    let g:airline_theme='dark'

Plugin 'altercation/vim-colors-solarized'

Plugin 'Raimondi/delimitMate'

Plugin 'Yggdroot/indentLine'
    set list lcs=tab:\|\ 

Plugin 'scrooloose/nerdtree'
    " autocmd vimenter * NERDTree
    let NERDTreeQuitOnOpen=1
    map <leader>e :NERDTreeFind<CR>
    map <C-n> :NERDTreeToggle<CR>
    " close nerdtree if it's the only buffer left
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

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
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" set colorcolumn=81
set wildmenu " show list instead of just  completing

nnoremap <S-Tab> :bnext<CR>
" nnoremap <C-S-Tab> :bprevious<CR>

set number
syntax enable
set background=dark
colorscheme peachpuff
set t_Co=256

" Fast window resizing with +/- keys (horizontal); / and * keys (vertical)
if bufwinnr(1)
   map <kPlus> <S-C-W><S-C-W>
   map <kMinus> <C-W><C-W>
   map <kDivide> <C-W><
   map <kMultiply> <C-W>>
endif


:" Only do this part when compiled with support for autocommands.
:if has("autocmd")
:  autocmd Filetype java setlocal omnifunc=javacomplete#Complete
:endif
:setlocal completefunc=javacomplete#CompleteParamsInfo

autocmd BufWritePost * exe ":UpdateTags"
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **/*.java" <Bar> cw<CR>
