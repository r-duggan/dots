set nocompatible
set syntax=on
set ruler			    " display current cursor position
set number relativenumber
set showcmd			    " display incomplete command in lower right of status
set wildmenu			" display completion matches in status line
set number			    " displays #s on lines
set backspace=indent,eol,start	" fixes some backspace problems
set ignorecase			" includes matching uppercase words with lowercase search term
set expandtab  			" tab inserts spaces instead of a tab
set tabstop=4 			" tab is 4 spaces
set shiftwidth=4        " indent is 4 spaces
set smartcase			" includes only uppercase words with uppercase search term
set noswapfile          " no swapfile
let mapleader=","
set scrolloff=20
set sidescrolloff=20
set encoding=UTF-8
set shortmess=a
set fillchars+=eob:\    " removes the ~ from side

" Test comment

if !has('nvim')
    set signcolumn=number   " set signcolumn to the number bar
endif

filetype plugin indent on

" calls .vimrc.digraphs for custom diagraphs
if filereadable(expand("~/.dots/.vimrc.digraphs"))
    source ~/.dots/.vimrc.digraphs 
endif

" calls .vimrc.plug for plug-in management
if filereadable(expand("~/.dots/.vimrc.plug"))	     
    source ~/.dots/.vimrc.plug
endif

"calls .vimrc.tagbar for custom tagbar support
if filereadable(expand("~/.dots/.vimrc.tagbar")) 
    source ~/.dots/.vimrc.tagbar
endif

" NERDTree stuff
nmap <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let NERDTreeShowHidden=1


" GitGutter settings
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red

" put the current working document as the title of terminal
autocmd BufEnter * let &titlestring=' ' . expand("%:t")
set title

" Coc settings
hi CocHintSign ctermfg=15
" use <tab> for trigger completion and navigate to the next complete item
"function! s:check_back_space() abort
""  let col=col('.') - 1
""  return !col || getline('.')[col - 1]  =~ '\s'
" endfunction

" Tags
nmap <F8> :TagbarToggle<CR>

" themes
colorscheme catppuccin_mocha
" colorscheme tokyonight
" colorscheme dracula
"set background=dark
set termguicolors
"let ayucolor="dark"
"colorscheme ayu
hi Normal guibg=NONE ctermbg=NONE

" splits
set splitbelow
set splitright

" keybinds
inoremap jk <ESC>
let mapleader=""

let g:indentLine_color_term=239
let g:indentLine_char_list=['|', '¦', '┆', '┊']

" folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=5

"Airline Config
let g:airline_powerline_fonts=1
let g:airline_theme='dracula'

" C++ Syntax Highlighting
" let g:cpp_class_scope_highlight=1
