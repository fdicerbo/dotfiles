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


Plugin 'kien/rainbow_parentheses.vim'
let g:rbpt_max = 21
let g:rbpt_colorpairs = [
\['blue', '#FF6000'],
\['cyan', '#00FFFF'],
\['darkmagenta', '#CC00FF'],
\['yellow', '#FFFF00'],
\['red', '#FF0000'],
\['darkgreen', '#00FF00'],
\['White', '#c0c0c0'],
\['blue', '#FF6000'],
\['cyan', '#00FFFF'],
\['darkmagenta', '#CC00FF'],
\['yellow', '#FFFF00'],
\['red', '#FF0000'],
\['darkgreen', '#00FF00'],
\['White', '#c0c0c0'],
\['blue', '#FF6000'],
\['cyan', '#00FFFF'],
\['darkmagenta', '#CC00FF'],
\['yellow', '#FFFF00'],
\['red', '#FF0000'],
\['darkgreen', '#00FF00'],
\['White', '#c0c0c0'],
\]
augroup RainbowParentheses
autocmd!
autocmd VimEnter * RainbowParenthesesActivate
autocmd BufEnter * RainbowParenthesesLoadRound
autocmd BufEnter * RainbowParenthesesLoadSquare
augroup END

Plugin 'tpope/vim-fugitive'


Plugin 'bling/vim-airline'
    let g:airline#extensions#tabline#enabled=1
    let g:airline_left_sep=''
    let g:airline_right_sep=''

Plugin 'edkolev/promptline.vim'
    let g:promptline_powerline_symbols=0
    let g:promptline_theme = 'airline'
    let g:promptline_preset = 'clear'

Plugin 'altercation/vim-colors-solarized'

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
set et
set ts=4

set number
syntax enable
set background=dark
colorscheme solarized
set t_Co=256

" Fast window resizing with +/- keys (horizontal); / and * keys (vertical)
if bufwinnr(1)
   map <kPlus> <S-C-W><S-C-W>
   map <kMinus> <C-W><C-W>
   map <kDivide> <c-w><
   map <kMultiply> <c-w>>
endif
