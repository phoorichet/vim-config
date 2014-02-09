#! /bin/bash
#
# Setup Pathogen
echo "Downloaing and creating Pathogen directory" 
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim


# Clone the repo
echo "Cloning git https://github.com/phoorichet/vim-config.git"
git clone https://github.com/phoorichet/vim-config.git
cd vim-config 
git submodule init 
git submodule update

echo "Copying vimrc"
cp .vimrc ~/.vimrc
cp -r .vim/bundle/* ~/.vim/bundle/
