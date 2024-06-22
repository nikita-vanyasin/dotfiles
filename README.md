
### Yet another dotfiles repo for my Thinkpad X1 Carbon Gen7 laptop

### Main points
- ArchLinux
- i3wm with py3status, dunst and j4-dmenu-desktop
- Docker and VirtualBox
- Remmina+freerdp
- GoLang dev environment
- udiskie


### Guide
1) Install ArchLinux. Useful guides: [1](https://wiki.archlinux.org/index.php/Installation_guide), [2](https://kozikow.com/2016/06/03/installing-and-configuring-arch-linux-on-thinkpad-x1-carbon/)
1) I've specified these mount options in fstab for ext4 `/` partition: `rw,noatime,barrier=0,commit=60`
1) Set up a network connection. I've installed [NetworkManager](https://wiki.archlinux.org/index.php/NetworkManager) during the Arch setup
1) Create a user
1) `$ pacman -S git ansible`
1) `$ git clone https://aur.archlinux.org/ansible-aur.git && cd ansible-aur && makepkg -sri`
1) Install [homeshick](https://github.com/andsens/homeshick#quick-install)
1) `$ homeshick clone nikita-vanyasin/dotfiles`
1) `$ cd ~/ansible && ./run.sh`
1) Wait for it ...
1) Try to login into X session.


### Notes
1) After successfull execution of ansible playbook it's a good idea to check if any dotfiles were overwritten while installation:
  ```
  homeshick cd dotfiles
  git status
  ```
  Review and reset files if needed with `$ git checkout -- <filepath>`


2) Many resources recommend to update BIOS firmware as the new version contains various fixes, including addressing of [throttling](https://wiki.archlinux.org/index.php/Lenovo_ThinkPad_X1_Carbon_(Gen_7)#Power_management/Throttling_issues) issue.
  I've updated the firmware via Windows, but it can be updated on Linux using [fwupd tool](https://wiki.archlinux.org/index.php/Lenovo_ThinkPad_X1_Carbon_(Gen_7)#Updates), too.
  

### More useful links
- Enabling Microphone Mute keyboard and it's LED: https://gist.github.com/tybenz/5620255 
- Various config tricks for X1 Carbon: https://github.com/alberto-santini/i3-configuration-x1
