vim-config
==========

Configuration for vim

# Installation
1. Install Vim Pathogen
```
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
```

2. Clone this repo and init submoduel
```
git clone https://github.com/phoorichet/vim-config.git
cd vim-config
git submodule init
git submodule update
```

3. Copy .vimrc to your .vimrc
```
cd vim-config
cp .vimrc ~/.vimrc
```

4. Copy submodule to you vim bundle
In vim-config directory:
```
cp -r .vim/bundle/* ~/.vim/bundle/
```

# List of plugins
.vim/bundle/ctrlp.vim
.vim/bundle/emmet-vim
.vim/bundle/syntastic
.vim/bundle/vim-bundler
.vim/bundle/vim-endwise
.vim/bundle/vim-fugitive
.vim/bundle/vim-gitgutter
.vim/bundle/vim-indent-guides
.vim/bundle/vim-jsbeautify
.vim/bundle/vim-powerline
.vim/bundle/vim-rails
.vim/bundle/vim-sensible


