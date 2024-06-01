# Utility scripts for Arch Linux

This repository contains utility scripts for Arch Linux.

Run `install-arch.sh` to install Arch Linux on `/mnt`, it is usable on an installer.
Run `system.sh` to setup new installed Arch Linux, it is usable after `arch-chroot`.
Run `user.sh` to setup the user environment.
Run `apps.sh` to install applications.

# Cheat sheet

## mount

```bash
mount /dev/nvme1n1p3 /mnt
mount --mkdir /dev/nvme1n1p1 /mnt/boot
swapon /dev/nvme1n1p2
```

## chroot

```bash
arch-chroot /mnt
```

## hostname

```bash
echo -n $HOST_NAME > /etc/hostname
```

## useradd

```bash
useradd -m $USER_NAME
passwd $USER_NAME
gpasswd -a $USER_NAME $GROUP_NAME
```

## sudo

```bash
# when first
visudo
# uncomment wheel group rule.

# add user to sudoers
gpasswd -a $USER_NAME wheel
```

# yay

```bash
git clone https://aur.archlinux.org/yay-bin
cd yay-bin
makepkg -si
```
