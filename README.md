# 💤 Isa's Neovim Configuration

My neovim config, based on the [LazyVim](https://github.com/LazyVim/LazyVim) starter template.

For information on how to further configure, please refer to the LazyVim documentation.

To use, simply clone this repository as your configuration folder, typically `~/.config/nvim`.
You are welcome to delete the `.git` directory if you wish to track your own changes. I require no credit for anything you do with this configuration.

## Prerequisites

> Note: This is not an exhaustive list. Individual plugins may have dependencies not installed by Mason. I have done my best to list them here, but there may be some missing.

> I recommend installing Python packages system-wide. On Arch Linux, this can be done with `pacman -S python-packagename`. For example, `pacman -S python-pynvim`.

- [Neovim](https://neovim.io/) >= 0.9.0
- Git
- [Python 3](https://www.python.org/)
- a C compiler (like `gcc` or `clang`) for some plugins
- a Nerd Font (like [Fira Code Nerd Font](https://www.nerdfonts.com/font-downloads))

**Python Packages**:

- `pynvim`
- `requests` (For CopilotChat)
- `prompt-toolkit` (For CopilotChat)
- `python-dotenv` (For CopilotChat)
