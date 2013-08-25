" Pathogen
execute pathogen#infect()


"" My appearance stuff
syntax on       " syntax hilighting
set number      " line numbers
set mouse=a     " capture mouse
colorscheme wombat256


"" My custom keybindings
let mapleader = ","
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-n> :NERDTreeToggle<CR>
map <Leader>n :NERDTreeToggle<CR>


"" Custom command to write as sudo: w!!
" From http://nvie.com/posts/how-i-boosted-my-vim/
cmap w!! w !sudo tee % >/dev/null


"" Tabs
" http://vim.wikia.com/wiki/Converting_tabs_to_spaces
set expandtab    " insert spaces when tab is pressed
set tabstop=2    " tab = 2 spaces
set shiftwidth=2 " use 2 spaces for indentation
set list         " show whitespace characters
setlocal textwidth=79     " Set this to have long lines wrap inside comments.


"" From vim-fish.git 
filetype plugin indent on
compiler fish  " Set up :make to use fish for syntax checking.
"setlocal foldmethod=expr  " Enable folding of block structures in fish.

""" YCM & Utilisnips key binding help
" http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme

"" YouCompleteMe
"let g:ycm_key_list_previous_completion=['<Up>']
let g:ycm_confirm_extra_conf = 0  " Suppress warning message


"" Ultisnips
let g:UltiSnipsExpandTrigger="<Leader><Leader>"   " Expand snippet
let g:UltiSnipsJumpForwardTrigger="<C-j>"         " Next field
let g:UltiSnipsJumpBackwardTrigger="<C-k>"        " Prev field

" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


"" NERDTree
" Open NERDTree automatically if no file is open
autocmd vimenter * if !argc() | NERDTree | endif

" Close NERDTree automatically if only thing left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

