set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
"Plugin 'scrooloose/nerdtree'
"Plugin 'vim-syntastic/syntastic'
"Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'tpope/vim-surround'
"Plugin 'python-mode/python-mode'


" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"map <C-n> :NERDTreeToggle<CR>
" set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/

set number                    " show line numbers
set showcmd                   " show command in bottom bar
set cursorline                " highlight current line

set wildmenu                  " visual autocomplete for command menu
"set background=dark
m .syntax enable
colorscheme monokai " theme setup

set tabstop=2                 " number of visual spaces per tab
set shiftwidth=2
set softtabstop=2            " number of spaces in tab when editing
set expandtab

set incsearch                 " search as characters are entered
"set hlsearch                  " highlight matches
set foldenable                " enable folding
set foldlevelstart=10         " opens most folds by default
set foldmethod=indent         " fold based on indent level

"set ruler                     " always show current position
set lbr                       " Linebreak on 500 characters
set tw=120                     " tw = text width

set ai                        " Auto indent
"set si                        " Smart indent
set wrap                      " Wrap lines

set visualbell                " No sounds
set showmode                  " Show current mode at the bottom
set ignorecase                " Ignore case while searching
set mouse=a                   " Enable mouse
set clipboard=unnamed
set backspace=indent,eol,start

