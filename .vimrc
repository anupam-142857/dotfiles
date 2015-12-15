set number 	" show line numbers

set showcmd		" show command in bottom bar
set cursorline 	" highlight current line

set wildmenu 	" visual autocomplete for command menu

colorscheme molokai	"theme setup
syntax on

set tabstop=2 	" number of visual spaces per tab
set shiftwidth=2
"set softtabstop=2 	number of spaces in tab when editing

set incsearch   " search as characters are entered        
set hlsearch 	" highlight matches

set foldenable 	" enable folding
set foldlevelstart=10 	" opens most folds by default
set foldmethod=indent 	" fold based on indent level

set ruler " always show current position

set lbr		" Linebreak on 500 characters
set tw=80		" tw = text width

set ai "Auto indent
"set si Smart indent
set wrap "Wrap lines

set visualbell	" No sounds

set showmode		"Show cuurent mode at the bottom

set ignorecase 	" Ignore case while searching

set mouse=a " Enable mouse

inoremap jk <esc>		" Remap escape to jk
inoremap <esc> <nop>	" Pressing escape does no operation 
