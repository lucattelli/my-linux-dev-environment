# My Linux Dev Environment [WIP]

Running notes to self on how I've set up my current development environment for personal use.

# Installation

Moving to Arch Linux, by the way!

## Installation Cheat Sheet

- Experimenting with this for LUKS and btrfs: https://gist.github.com/mihirchanduka/a9ba1c6edbfa068d2fbc2acb614c80e8

### Initial Settings

- Brazilian keyboard `loadkeys br-abnt2`.
- Use `iwctl` to set up wi-fi, then `station wlan0 connect <SSID`, then `ping ping.archlinux.org` to confirm its working.
- `timedatectl set-ntp true` to update the system clock once connected to the internet.

### Partition for boot, swap, root, and home partitions

- `fdisk -l` to list disks, then `fdisk /dev/<disk>`.
- `mkfs.fat -F 32 /dev/<boot>`.
- `mkswap /dev/<swap>`.
- `swapon /dev/<swap>`.

### Encrypt disk

- `modprobe dm-crypt dm-mod`.
- `cryptsetup luksFormat -v -s 512 -h sha512 /dev/<root>`.
- `cryptsetup luksOpen /dev/<root> archroot`.
- `mkfs.btrfs /dev/mapper/archroot`.
- `mount /dev/mapper/archroot /mnt`.
- `cd /mnt`.
- `btrfs subvolume create @`.
- `cd`.
- `umount /nnt`.

- `cryptsetup luksFormat -v -s 512 -h sha512 /dev/<home>`.
- `cryptsetup luksOpen /dev/<home> archhome`.
- `mkfs.btrfs /dev/mapper/archhome`.
- `mount /dev/mapper/archhome /mnt`.
- `cd /mnt`.
- `btrfs subvolume create @home`.
- `cd`.
- `umount /nnt`.

- `mount -o noatime,compress=zstd:1,space_cache=v2,discard=async,subvol=@ /dev/mapper/archroot /mnt`.
- `mkdir /mnt/boot`.
- `mount /dev/<boot> /mnt/boot`.
- `mkdir /mnt/home`.
- `mount -o noatime,compress=zstd:1,space_cache=v2,discard=async,subvol=@home /dev/mapper/archhome /mnt/home`

### Installing packages

- `pacstrap -K /mnt base base-devel linux linux-firmware linux-headers sudo neovim intel-ucode btrfs-progs bash-completion efibootmgr hyprland iwd man intel-ucode firewalld nvidia nvidia-utils grub`.
- `genfstab -U /mnt >> /mnt/etc/fstab`.
- `arch-chroot /mnt`.
- `timedatectl set-ntp true`.
- `timedatectl set-timezone America/Sao_Paulo`.
- `hwclock --systohc`.
- `vim /etc/locale.gen` and uncomment `en_US.UTF-8 UTF-8`.
- `locale-gen`.
- `echo LANG=en_US.UTF-8 > /etc/locale.conf`.
- `echo KEYMAP=br-abnt2 > /etc/vconsole.conf`.
- `echo <hostname> > /etc/hostname`.
- `echo 127.0.0.1    <hostname>.localdomain   <hostname>`.


- `pacman -S 




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
sudo apt install ninja-build gettext cmake unzip curl build-essential

git clone https://github.com/neovim/neovim

cd neovim

git checkout stable

make CMAKE_BUILD_TYPE=RelWithDebInfo

```
Instead of doing `sudo make install`, I use the Debian way (which allows for easier cleanup when upgrading):

```
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb
```

Then, I install the clipboard dependencies for XOrg and Wayland:

```
sudo apt install xsel xclip wl-clipboard
```

## Install tpm

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
