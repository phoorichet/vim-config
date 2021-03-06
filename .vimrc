" Change vimrc with auto reload
autocmd! bufwritepost .vimrc source %

" Standard plugin installation
" mkdir -p ~/.vim/autoload && ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
execute pathogen#infect()

syntax on                       " syntax highlighting
set shiftwidth=8                " spaces to (auto)indent
set softtabstop=8               " spaces for tab
set tabstop=8                   " The width of a TAB is set to 4.
set smartindent                 " autoindent for the next level
" set expandtab                   " tabs to spaces
set ls=2                        " show status (even with one window)
hi StatusLine ctermfg=darkgray  " default status line with filename
set backspace=indent,eol,start  " backspace fixits
set mouse=a                     " mouse use
set history=10000               " history
set undolevels=10000            " 700 undolevel
" set list                        " show trailing whitespace
" set listchars=tab:▸\ ,trail:▫
" set number                      " set line number
set ruler                       " cursor pos
set directory-=.                " don't store swapfiles in the current directory
set scrolloff=3                 " show context above/below cursorline
set showcmd
set wildmenu                    " show a navigable menu for tab completion
set wildmode=longest,list,full
set nocompatible                " use vim improvements

" Searching
set ignorecase                  " case (in)sensitive search
set smartcase                   " smart search
set hlsearch                    " highlight searches
set incsearch                   " incremental search

" 80 character formatting w/ no line wrap
set textwidth=0
set formatoptions-=t
set wrapmargin=0

" following two lines highlights in blue if over 80 characters
" hi OverLength ctermbg=darkblue ctermfg=white
" match OverLength /\%80v.\+/

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

" Rebind <Leader> key
let mapleader=","

" Bind nohl
" Remove highlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

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
nmap J }
nmap K {

" NERDTree
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
let g:NERDTreeWinPos = "right"

" map sort function to a key (use v+movement for selecting a block)
vnoremap <Leader>s :sort<CR>

" Easier indentation
vnoremap < <gv
vnoremap > >gv


" Automatically change the current directory
"set autochdir


" Highlight whitespace
"autocmd  ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"au InsertLeave * match ExtraWhitespace /\s\+$/

" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors

" Easier formating paragraph
vmap Q gq
nmap Q gqap

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

" It's useful to always show the buffer number in the status line.
"set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Easier insert yanked text into vim cmd
map <c-v> <c-r>"

" fdoc is yaml
autocmd BufRead,BufNewFile *.fdoc set filetype=yaml
" md is markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown
" extra rails.vim help
autocmd User Rails silent! Rnavcommand decorator      app/decorators            -glob=**/* -suffix=_decorator.rb
autocmd User Rails silent! Rnavcommand observer       app/observers             -glob=**/* -suffix=_observer.rb
autocmd User Rails silent! Rnavcommand feature        features                  -glob=**/* -suffix=.feature
autocmd User Rails silent! Rnavcommand job            app/jobs                  -glob=**/* -suffix=_job.rb
autocmd User Rails silent! Rnavcommand mediator       app/mediators             -glob=**/* -suffix=_mediator.rb
autocmd User Rails silent! Rnavcommand stepdefinition features/step_definitions -glob=**/* -suffix=_steps.rb
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" Install powerline plugin
" cd ~/.vim/bundle && git clone https://github.com/Lokaltog/vim-powerline.git

" Install fugitive (git+vim)
" cd ~/.vim/bundle
" git clone git://github.com/tpope/vim-fugitive.git

" map <c-f> :call JsBeautify()<cr>
" or
" autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" " for html
" autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" " for css or scss
" autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>


" Emmet
" https://github.com/mattn/emmet-vim/
" div#classname    then <ctr+y> + ,

" Comments
" https://github.com/tomtom/tcomment_vim
" key <c+_><c+_>
"

" Tabular for alignment
" http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

" Allow quick search tag
" http://andrew.stwrt.ca/posts/vim-ctags/
nnoremap <leader>. :CtrlPTag<cr>

" Ctags
set tags=./tags

" Tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/local/Cellar/ctags/5.8/bin/ctags'

" Golang
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"
let g:go_doc_keywordprg_enabled = 0 " disable do doc keyword with K binding

" monokai
let g:molokai_original = 1

" ctlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
