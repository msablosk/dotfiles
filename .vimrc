" VIM Configuration - Mitchell Sablosky

" Pathogen package manger
execute pathogen#infect()

" Disable Vi compatibility mode
set nocompatible

" -- Display
set title                 " Update the title of your window or your terminal
set number                " Display line numbers
set ruler                 " Display cursor position
set wrap                  " Wrap lines when they are too long

set scrolloff=3           " Display at least 3 lines around you cursor
                          " (for scrolling)

" -- Search
set ignorecase            " Ignore case when searching
set smartcase             " If there is an uppercase in your search term
                          " search case sensitive again
set incsearch             " Highlight search results when typing
set hlsearch              " Highlight search results
"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" -- Beep
set visualbell            " Prevent Vim from beeping
set noerrorbells          " Prevent Vim from beeping

" Backspace behaves as expected
set backspace=indent,eol,start

" Hide buffer (file) instead of abandoning when switching
" to another buffer
set hidden

" Enable syntax highlighting
syntax on

" Enable file specific behavior like syntax highlighting and indentation
filetype on
filetype plugin on
filetype indent on

" Use the dark version of Solarized
set background=dark
colorscheme monokai 


""" GUI Settings
" Change the font
"Set the guifont
set guifont=Menlo:h13
set antialias
set guioptions-=r
set guioptions-=L

" Set tab as 4 spaces
set tabstop=4
set shiftwidth=4

" Make jk do esc"
inoremap jk <Esc>

" Toggle in NerdTree with CTRL + N
map <C-n> :NERDTreeToggle<CR>

" Add status line
set laststatus=2

" Remove YCM function preview
set completeopt-=preview

" Improved Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" change cursor bewtween modes
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"

" optional reset cursor on start:
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[1 q"
augroup END


" highligting based on mode 
autocmd InsertEnter,InsertLeave * set cul!

" vim and os clipboard are shared
set clipboard=unnamed

" decrease mode switch delay
set timeoutlen=1000 ttimeoutlen=0
