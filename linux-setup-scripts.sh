sudo apt install git curl htop fastfetch -y

# Cài bộ gõ tiếng Việt Fcitx5
sudo apt install fcitx5 fcitx5-unikey kde-config-fcitx5 -y

# install kitty 
# https://sw.kovidgoyal.net/kitty/binary/#binary-install

# install zsh
sudo apt install zsh -y

# install oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


# configure zsh plugins
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# reload zsh configuration
source ~/.zshrc

# install Starship prompt
curl -sS https://starship.rs/install.sh | sh

# install JetBrains Mono Nerd Font
mkdir -p ~/.local/share/fonts
cd /tmp
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip JetBrainsMono.zip -d ~/.local/share/fonts/JetBrainsMono
fc-cache -fv

nano ~/.config/kitty/kitty.conf


font_family JetBrainsMono Nerd Font
font_size 13

# Catppuccin Mocha theme Kitty
mkdir -p ~/.config/kitty
curl -L https://raw.githubusercontent.com/catppuccin/kitty/main/themes/mocha.conf -o ~/.config/kitty/catppuccin-mocha.conf
nano ~/.config/kitty/kitty.conf

include catppuccin-mocha.conf
font_family JetBrainsMono Nerd Font
font_size 13