if [ ! -L ~/.config/nvim ]; then
  ln -s "$(pwd)/.config/nvim/" ~/.config/nvim
fi

if [ ! -L ~/.config/wezterm ]; then
  ln -s "$(pwd)/.config/wezterm/" ~/.config/wezterm
fi

if [ ! -L ~/.zshrc ]; then
  ln -s "$(pwd)/.zshrc" ~/.zshrc
fi
