# Dotfiles

This repository contains my personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/). These dotfiles are configured for my workflow across different environments.

## Installation

Clone the repository and use `stow` to symlink the configurations:

```sh
# Clone the repository
git clone https://github.com/ad-archer/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# Symlink specific configurations
stow . for everything
```

## Structure
Each directory corresponds to a specific application, and `stow` is used to manage the symlinks:

```
.dotfiles/
├── zsh/
│   ├── .zshrc
├── hyprland/
│   ├── .config/hypr/
├── nvim/
│   ├── .config/nvim/
```

## Notes
- Ensure `stow` is installed (`sudo pacman -S stow` on Arch Linux).
- Run `stow -D <package>` to remove symlinks.
- Modify configurations as needed before stowing.
- Reference: [YouTube Guide on Stow](https://www.youtube.com/watch?v=y6XCebnB9gs)

## License
MIT License

