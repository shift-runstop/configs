""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""                                 ___           ___           __		   |
""      ___            ___        /  /\         /  /\         /  /\		   |
""     /  /\          /__/\      /  /::|       /  /::\       /  /::\	   |
""    /  /:/          \__\:\    /  /:|:|      /  /:/\:\     /  /:/\:\	   |
""   /  /:/           /  /::\  /  /:/|:|__   /  /::\ \:\   /  /:/  \:\	   |
""  /__/:/  ___    __/  /:/\/ /__/:/_|::::\ /__/:/\:\_\:\ /__/:/ \  \:\	   |
""  |  |:| /  /\  /__/\/:/~~  \__\/  /~~/:/ \__\/~|::\/:/ \  \:\  \__\/	   |
""  |  |:|/  /:/  \  \::/           /  /:/     |  |:|::/   \  \:\		   |
""  |__|:|__/:/    \  \:\          /  /:/      |  |:|\/     \  \:\		   |
""   \__\::::/      \__\/         /__/:/       |__|:|~       \  \:\		   |
""       ~~~~                     \__\/         \__\|         \__\/		   |
""																		   |
""																		   |
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"============================================"
"	 	Manage plugins across boxes
"============================================"
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter *PlugInstall --sync | source $MYVIMRC
endif
autocmd VimEnter *
	\ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
	\| PlugInstall --sync |q
	\| endif
silent! if  plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
call plug#end()
endif

" CSCOPE
source ~/.vim/plugged/cscope_maps.vim

"============================================"
" 				  setters
"============================================"
"commented but on some set ups
"filetype on
"filetype plugin on
"filetype indent on
syntax enable
set number
set ruler
set ignorecase
set hlsearch
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cindent
set wrap
set visualbell
set splitbelow splitright
set noswapfile
set encoding=utf-8
set t_Co=256
set ttyfast
"============================================"
" 				Airline Settings
"============================================"
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1
"==========================================="
"			YouCompleteMe
"==========================================="
let g:ycm_log_level = 'debug'
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>>'
"============================================"
" 			mappings and autocmd's'
"============================================"
nmap j gj
nmap k gk
nmap " :NERDTreeToggle<CR>
map ; :Files<CR>
map <F6> :setlocal spell! spelllang=en_us<CR>
map <F10> :Goyo<CR>
map t :terminal<CR>
highlight statement ctermfg=Blue guifg=Blue
highlight LineNr ctermfg=Green guifg=Green
autocmd filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
autocmd BufWritePre * %s/\s\+$//e
nnoremap <Space> <c-w>
nnoremap <F4> :set relativenumber!<CR>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
"inoremap < <><left>
autocmd FileType html inoremap ,b <b></b><Space><++><Esc>FbT>i
autocmd FileType html inoremap ,it <em></em><Space><++><Esc>FeT>i
autocmd FileType html inoremap ,1 <h1></h1><Enter><Enter><++><Esc>2kf<i
autocmd FileType html inoremap ,2 <h2></h2><Enter><Enter><++><Esc>2kf<i
autocmd FileType html inoremap ,3 <h3></h3><Enter><Enter><++><Esc>2kf<i
autocmd FileType html inoremap ,p <p></p><Enter><Enter><++><Esc>02kf>a
autocmd FileType html inoremap ,a <a<Space>href=""><++></a><Space><++><Esc>14hi
autocmd FileType html inoremap ,e <a<Space>target="_blank"<Space>href=""><++></a><Space><++><Esc>14hi
autocmd FileType html inoremap ,ul <ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
autocmd FileType html inoremap ,li <Esc>o<li></li><Esc>F>a
autocmd FileType html inoremap ,ol <ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i
autocmd FileType html inoremap ,im <img src="" alt="<++>"><++><esc>Fcf"a
autocmd FileType html inoremap ,td <td></td><++><Esc>Fdcit
autocmd FileType html inoremap ,tr <tr></tr><Enter><++><Esc>kf<i
autocmd FileType html inoremap ,th <th></th><++><Esc>Fhcit
autocmd FileType html inoremap ,tab <table><Enter></table><Esc>O
autocmd FileType html inoremap ,gr <font color="green"></font><Esc>F>a
autocmd FileType html inoremap ,rd <font color="red"></font><Esc>F>a
autocmd FileType html inoremap ,yl <font color="yellow"></font><Esc>F>a
autocmd FileType html inoremap ,dt <dt></dt><Enter><dd><++></dd><Enter><++><esc>2kcit
autocmd FileType html inoremap ,dl <dl><Enter><Enter></dl><enter><enter><++><esc>3kcc
