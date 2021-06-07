wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage 

chmod u+x nvim.appimage

echo "alias nvim=/root/nvim.appimage" >> ~/.bashrc

source .bashrc
mkdir -p .config

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

pip3 install kaggle
mkdir -p .kaggle/kaggle.json

git clone https://github.com/AND2797/dotfiles.git
sh dotfiles/install.sh

git config --global user.name "AND2797"
git config --global user.email "aditya.das2797@gmail.com"
