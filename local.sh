#!/bin/sh

echo "Enabling local development mode!"

rm ~/.config/starship.toml
ln -s $(pwd)/starship.toml ~/.config/starship.toml

pre-commit install