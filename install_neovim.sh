#!/bin/bash
# 
echo "COPY PASTE THESE 2 INSTRUCTIONS ON ANOTHER TERMINAL"
echo "curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \ "
echo "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
read -p "Appuez sur une touche pour continuer... " -n 1 -s
cd

mkdir ~/.config/nvim
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo add-apt-repository -y ppa:neovim-ppa/stable && sudo apt-get update && sudo apt-get install neovim 
sudo apt-get install -y python-dev python-pip python3-dev python3-pip 
sudo -H pip3 install --upgrade neovim
sudo -H pip2 install --upgrade neovim
sudo npm install -g neovim

cp ~/dotfiles/.tern-project ~/
cp ~/dotfiles/nvim/init.vim ~/.config/nvim/
mkdir ~/.config/nvim/colors
cp ~/dotfiles/nvim/colors/onedark.vim ~/config/nvim/colors
cp ~/dotfiles/nvim/init.vim ~/.config/nvim/

nvim +PlugInstall  
cd && cd ~/.vim/plugged/tern_for_vim/ && sudo npm install tern
cd && cd ~/.vim/plugged/tern_for_vim/node_modules/tern/plugin && wget "http://redchilligame.com/tutorials/vim_phaser/js/phaser.js" 
# sans tern server global ctrl x ctrl o fonctionne
#cd && sudo npm install -g tern

exit 0
