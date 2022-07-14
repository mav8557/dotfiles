# dotfiles

These are my dotfiles. I manage them with [stow](https://www.gnu.org/software/stow/).

## Installation

To replicate my setup, first **make sure you back up the configuration for any of the software listed!**


After that you can check out the repository:

```bash
git clone https://github.com/mav8557/dotfiles ~/.dotfiles
```

For example, to install my neovim config, just run stow and the directory name. It will take what's in there (.config/nvim) and symlink it under the parent directory of ~/.dotfiles - linkig it at ~/.config/nvim.

```bash
cd ~/.dotfiles
stow nvim
```
