#! /bin/bash

echo "Installing ZSH!"
sudo apt install zsh
echo "Installed!"

echo "Installing Oh My ZSH!"
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; zsh
echo "Installed!"

echo "By setting ZSH as the default shell!"
sudo usermod --shell $(which zsh) $USER
echo "OK!"

echo "Installing ZSH Syntax Highlighting!"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "Installed!"

echo "Installing ZSF Autosuggestions!"
git clone https://github.com/zsh-users/zsh-autosuggestions
$ZSH_CUSTOM/plugins/zsh-autosuggestions
echo "Installed!"

echo "Installing Fzf!"
sudp apt install fzf
echo "Installed!"

echo "Installing Hack Fonts!"
mkdir ~/.fonts
curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Hack.zip --output $HOME/.fonts/Hack.zip
unzip $HOME/.fonts/Hack.zip -d $HOME/.fonts
echo "Installed!"

echo "Installing PowerLevel9K!"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
echo "Installed!"

echo "Installing Tilix Theme Brogrammer"
wget -qO $HOME"/.config/tilix/schemes/brogrammer.json" https://git.io/v7Qa3
echo "Installed!"

echo "Set Tilix Hack Font and Brogrammer theme in Configurations and press Enter!"
read VAR
if [[ -z $VAR ]]; then
echo "OK"
fi

echo "By copying .zshrc!"
sudo mv .zshrc $HOME/.zshrc
echo "OK"

echo "Done....."
