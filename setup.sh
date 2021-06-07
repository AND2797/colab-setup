wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage > /dev/null 2>&1

chmod u+x nvim.appimage

echo "alias nvim=/root/nvim.appimage" > ~/.bashrc

source .bashrc
mkdir -p .config

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' > /dev/null 2>&1

pip3 install kaggle
git clone https://github.com/AND2797/dotfiles.git
sh install.sh

