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
sudo apt install git curl tmux htop iftop ubuntu-restricted-extras ubuntu-restricted-addons zsh -y
```

## Install oh-my-zsh (from [here](https://ohmyz.sh/#install))

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
