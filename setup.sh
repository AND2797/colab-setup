wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage

chmod u+x nvim.appimage

echo "alias nvim=/root/nvim.appimage" > ~/.bashrc
source .bashrc

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


git clone https://github.com/AND2797/dotfiles.git
cd dotfiles && sh install.sh

