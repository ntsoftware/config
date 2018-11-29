" Remove GUI toolbar
set guioptions-=T
" Set GUI font
set guifont=Monaco:h13

" Print the line number in front of each line
set number
" Copy indent from current line when starting a new line
set autoindent
" Insert spaces instead of tabs
set expandtab
" Enable search highlight
set hlsearch
" Show search pattern as you type
set incsearch

" Go to next buffer
map <F2> :bn<CR>
" Go to previous buffer
map <F3> :bp<CR>
" Turn off search highlight
map <F4> :nohlsearch<CR>
" Convert to byte wise hex dump
map <F5> :%!xxd -g1<CR>
" Trigger any word completion
imap <C-Space> <C-X><C-N>

" Turn on syntax highlighting
syntax on
" Turn on file type plugin detection
filetype plugin on
