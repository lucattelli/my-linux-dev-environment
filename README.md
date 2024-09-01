# My Linux Dev Environment

A short guide on how I set up my development environment using Linux.

# Installation

Either Fedora or Ubuntu have been my go-to choices.

# After Install (using Ubuntu as reference)

## Update system

```
sudo apt update; sudo apt upgrade
```

## Install basic software

```
sudo apt install build-essential cmake curl gettext git htop iftop libbz2-dev libffi-dev libfontconfig1-dev libfreetype6-dev liblzma-dev libncursesw5-dev libreadline-dev libsqlite3-dev libssl-dev libxcb-xfixes0-dev libxkbcommon-dev libxml2-dev libxmlsec1-dev ninja-build pkg-config python3 ripgrep tk-dev tmux ubuntu-restricted-addons ubuntu-restricted-extras xz-utils zlib1g-dev zsh -y





sudo snap install bitwarden dbeaver-ce spotify
```

## Install oh-my-zsh (from [here](https://ohmyz.sh/#install))

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Install nvm (from [here](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating))

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
```

## Install pyenv (from [here](https://github.com/pyenv/pyenv?tab=readme-ov-file#installation))

```
curl https://pyenv.run | bash
```

## Install rust (from [here](https://www.rust-lang.org/tools/install))

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

## Install alacritty

```
sudo snap install alacritty --classic
```

## Build & install neovim (from [here](https://github.com/neovim/neovim/blob/master/BUILD.md))

```
sudo apt-get install ninja-build gettext cmake unzip curl build-essential

git clone https://github.com/neovim/neovim

cd neovim

git checkout stable

make CMAKE_BUILD_TYPE=RelWithDebInfo

```
Instead of doing `sudo make install`, I use the Debian way (which allows for easier cleanup when upgrading):

```
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb
```

## Install tpm

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
