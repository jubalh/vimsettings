Bundle 'vim-scripts/vimwiki'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'kshenoy/vim-signature'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'honza/vim-snippets'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'
"Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'xolox/vim-session'
Bundle 'lepture/vim-css'
Bundle 'skammer/vim-css-color'
Bundle 'chrisbra/color_highlight'
Bundle 'mattn/zencoding-vim'
Bundle 'uguu-org/vim-matrix-screensaver'
Bundle 'henrik/vim-indexed-search'
Bundle 'mattn/benchvimrc-vim'
Bundle 'mutewinter/vim-indent-guides'
"easymotion, colorv.vim

set nocompatible
syntax on
set cm=blowfish
set autoread
set autoindent
set number
set hidden
set showmode
set hlsearch
set ignorecase
set smartcase
set showcmd
set showmatch
set wildmenu
set ttyfast
set cursorline
set noerrorbells
set mouse=a
set cmdheight=2
set laststatus=2
set backspace=2
set tabstop=4
set shiftwidth=4
set softtabstop=4
set fileformats=unix
set fileencoding=utf-8
scriptencoding utf-8

set list
set listchars=tab:>-,trail:·
if has("linebreak")
    let &sbr = nr2char(8618).' '
endif

if has("autocmd")
	autocmd ColorScheme * highlight SpecialKey guifg=DarkYellow ctermfg=DarkYellow
	autocmd ColorScheme * highlight NonText guifg=DarkYellow ctermfg=DarkYellow
	autocmd ColorScheme * highlight ExtraWhitespace guifg=DarkYellow ctermfg=DarkYellow
endif

colorscheme solarized

"TODO: nur wenn unicode zeichen verfuegbar let
"	g:Powerline_symbols = 'fancy'

if has("gui_running")
	"no toolbar
	set guioptions-=T
	"no menubar
	set guioptions-=m
else
	set t_Co=256
endif

if has('win32') || has('win64')
	behave mswin
	if has("gui_running") 
		set guifont=Consolas:h12
		"maximize window
		au GUIEnter * simalt ~x
	endif
endif

if has("autocmd")
	autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
	autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
	autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
	autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
	autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
endif
