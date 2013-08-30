" Change vimrc with auto reload
autocmd! bufwritepost .vimrc source %

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

" Rebind <Leader> key
let mapleader=","

" Bind nohl
" Remove highlight of your last search
"noremap <C-n> :nohl<CR>
"vnoremap <C-n> :nohl<CR>
"inoremap <C-n> :nohl<CR>

" Quick save command
noremap <Leader>s :update<CR>
vnoremap <Leader>s <C-C> :update<CR>
noremap <Leader>s <C-O> :update<CR>

" Quick quit
noremap <Leader>e :quit<CR>
noremap <Leader>E :qa!<CR>

" blind Crtl+<movement> keys to move around the windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" Eaiser moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" map sort function to a key (use v+movement for selecting a block
vnoremap <Leader>s :sort<CR>

" Easier indentation
vnoremap < <gv
vnoremap > >gv

" Highlight whitespace
"autocmd  ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"au InsertLeave * match ExtraWhitespace /\s\+$/

" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors

" Easier formating paragraph
vmap Q gq
nmap Q gqap

" sdfasdfasdssdfasdfsdfdfadsdsffffffasdfsdfsadfasdfdsfsdfasdfasdfadsfasds:update
"adsfasdfsdf

" Searching
set ignorecase                  " case (in)sensitive search
set smartcase                   " smart search
set hlsearch                    " highlight searches
set incsearch                   " incremental search


"weird" delete the next line
" use vim improvements
set nocompatible

" 80 character formatting w/ no line wrap
set textwidth=0
set formatoptions-=t
set wrapmargin=0
" following two lines highlights in blue if over 80 characters
hi OverLength ctermbg=darkblue ctermfg=white
match OverLength /\%80v.\+/

" indentation
set shiftwidth=2                " spaces to (auto)indent
set softtabstop=2               " spaces for tab
set smartindent                 " autoindent for the next level
set expandtab                   " tabs to spaces

" other stuff
syntax on                       " syntax highlighting
set ls=2                        " show status (even with one window)
hi StatusLine ctermfg=darkgray  " default status line with filename
set backspace=indent,eol,start  " backspace fixits
set mouse=a                     " mouse use
set history=10000               " history
set undolevels=10000               " 700 undolevel

" Usefule visual
set number                      " set line number
set ruler                       " cursor pos
"set laststatus=2                " always show status

" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P


" Easier insert yanked text into vim cmd
map <c-v> <c-r>"


" Standard plugin installation
" mkdir -p ~/.vim/autoload && ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
execute pathogen#infect()


" Install powerline plugin
" cd ~/.vim/bundle && git clone https://github.com/Lokaltog/vim-powerline.git

" Install fugitive (git+vim)
" cd ~/.vim/bundle
" git clone git://github.com/tpope/vim-fugitive.git

