" Pathogen
execute pathogen#infect()

"" Pre-load vim-sensible in case I want to override it.
runtime! plugin/sensible.vim

"" Default yank to system clipboard
set clipboard+=unnamed

"" My appearance stuff
set number      " line numbers
set mouse=a     " capture mouse
colorscheme wombat256

" Disable bell
set visualbell    " don't beep
set noerrorbells  " don't beep

"" My custom keybindings
let mapleader = ","
" Map Ctrl+{j,k,h,l} to select windows.
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Ctrl+n toggles NERDTree
map <C-n> :NERDTreeToggle<CR>
map <Leader>n :NERDTreeToggle<CR>



"" Tabs
" http://vim.wikia.com/wiki/Converting_tabs_to_spaces
set expandtab    " insert spaces when tab is pressed
set tabstop=2    " tab = 2 spaces
set shiftwidth=2 " use 2 spaces for indentation
set list         " show whitespace characters
setlocal textwidth=79     " Set this to have long lines wrap inside comments.

"" From http://blog.mojotech.com/a-veterans-vimrc/
set nocompatible
set undolevels=100  " Use more levels of undo

"" Searching
set ignorecase

"" From vim-fish.git
compiler fish  " Set up :make to use fish for syntax checking.

"" Custom command to write as sudo: w!!
" From http://nvie.com/posts/how-i-boosted-my-vim/
cmap w!! w !sudo tee % >/dev/null

"" NERDTree
" Open NERDTree automatically if no file is open
autocmd vimenter * if !argc() | NERDTree | endif

" Close NERDTree automatically if only thing left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"" YouCompleteMe
"let g:ycm_confirm_extra_conf = 0  " Suppress warning message

"" Ultisnips
"let g:UltiSnipsExpandTrigger="<Leader><Leader>"   " Expand snippet
"let g:UltiSnipsJumpForwardTrigger="<C-j>"         " Next field
"let g:UltiSnipsJumpBackwardTrigger="<C-k>"        " Prev field


