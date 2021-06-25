wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage 

chmod u+x nvim.appimage

echo "alias nvim=/root/nvim.appimage" >> ~/.bashrc

source .bashrc
mkdir -p .config

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

pip3 install kaggle
mkdir -p ~/.kaggle && touch ~/.kaggle/kaggle.json
kaggle datasets download -d muteks/cub-200-2011



git clone https://github.com/AND2797/dotfiles.git
sh dotfiles/install.sh

read -p "Enter your Github Username: " username
read -p "Enter your Github Email: " email
git config --global user.name $username


git config --global user.email $email 
