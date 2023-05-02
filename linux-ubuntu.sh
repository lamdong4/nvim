sudo apt-get update && apt-get upgrade
sudo apt-get install -y git make gcc sudo curl 
sudo apt install -y wget cmake unzip npm gettext yarn

sudo sudo npm install tree-sitter-cli

sudo curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
sudo apt update && apt install -y nodejs

sudo apt-get install ripgrep -y
sudo apt-get install python3-pip -y
sudo apt-get install curl -y

sudo curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# sudo add-apt-repository ppa:neovim-ppa/stable -y
# sudo apt update -y
# sudo apt install neovim -y
# apt-cache policy neovim -y

# install neovim
git clone https://github.com/neovim/neovim.git
cd neovim
sudo make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cp ./build/bin/nvim /usr/bin/

# config neovim
cd ..
sudo mkdir -p ~/.config/nvim
sudo cp -r nvim-linux/* ~/.config/nvim

sudo nvim --headless +PlugInstall +qa
sleep 2
cd ~/.local/share/nvim/plugged/coc.nvim/
sudo npm install
cd
sudo nvim --headless +CocInstall coc-python coc-json coc-jedi +qa


