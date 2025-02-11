#!/bin/zsh

# Install oh-my-zsh (it may already be there)
echo "Installing fonts..."
font_dir="$HOME/.local/share/fonts"
mkdir -p $font_dir
cp -r fonts/* $font_dir
if which fc-cache >/dev/null 2>&1 ; then
    echo "Resetting font cache, this may take a moment..."
    fc-cache -f "$font_dir"
fi
echo "Don't forget to set VSCode setting 'terminal.integrated.fontFamily' to 'MesloLGS NF'!"

echo "Installing StarShip..."
sh -c "$(curl -sS https://starship.rs/install.sh)" -- -y

mkdir -p ~/.config
cp starship.toml ~/.config/starship.toml

echo 'eval "$(starship init zsh)"' >> ~/.zshrc
echo 'eval "$(starship init bash)"' >> ~/.bashrc

echo "Done!"
