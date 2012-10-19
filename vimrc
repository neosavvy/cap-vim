" capVim - .vimrc

set nocp
call pathogen#infect()

syntax enable
filetype plugin indent on

" colorscheme
set background=dark
colorscheme solarized

" font and text
set guifont=Source\ Code\ Pro\ Black:h13

set nowrap					" don't wrap lines
set tabstop=4				" tab = 4 spaces
set shiftwidth=4 
set expandtab				" use spaces, not tabs
set number          " show line numbers 

"
"	searchin' n' shit
"
set hlsearch				" highlight matches
set ignorecase				" case-insensitive

"
" brackets and quotes
"
inoremap ( ()<Esc>:let leavechar=")"<CR>i
inoremap " ""<Esc>:let leavechar="\""<CR>i
inoremap ' ''<Esc>:let leavechar="'"<CR>i
inoremap < <><Esc>:let leavechar=">"<CR>i
inoremap { {}<Esc>:let leavechar="}"<CR>i
inoremap [ []<Esc>:let leavechar="]"<CR>i

imap <C-j> <Esc>:exec "normal f" . leavechar<CR>a

inoremap <CR> <Esc>
