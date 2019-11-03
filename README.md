
Install ArchLinux
Set up a network connection, I've used NetworkManager

$ pacman -S ansible
$ pacman -S git

$ gpg --list-secret-keys
$ gpg --gen-key

Install github.com/andsens/homeshick

$ homeshick clone nikita-vanyasin/dotfiles

$ cd ~/ansible
$ ./run.sh