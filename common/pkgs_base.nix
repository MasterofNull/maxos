{ config, pkgs, lib, ... }:

with pkgs;
let
  my-python-packages = python-packages: with python-packages; [
    pip
    setuptools
    requests
  ]; 
  python-with-my-packages = python3.withPackages my-python-packages;
in {
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
     acpi
     apktool
     amass
     android-studio
     android-tools
     appimage-run
     asciinema
     autokey
     awscli
     azure-cli
     bat
     binwalk
     brightnessctl
     brillo
     broot
     burpsuite
     calibre
     cht-sh
     chroma
     chromium
     choose
     cifs-utils
     clamav
     connman
     connman-gtk
     coreutils
     cutter
     cups-brother-hl3140cw
     dbeaver
     dex2jar
     dhcpcd
     dig
     dmenu
     docker
     docker-compose
     dog
     duf
     dunst
     du-dust
     electrum
     enum4linux
     fcrackzip
     fd
     feh
     ffmpeg
     ffuf
     file
     filezilla
     firecracker
     firectl
     firefox
     flameshot
     fswebcam
     fzf
     gammastep
     gcc
     genymotion
     ghidra-bin
     gimp
     git
     git-crypt
     glances
     gnumake
     gnupg
     go
     gobuster
     googler
     gotty
     gpa
     grc
     grim
     gsettings-desktop-schemas
     hakrawler
     hexedit
     hey
     hping
     htop
     httpx
     hyper
     i3
     i3status-rust
     imagemagick
     inetutils
     inkscape
     iotop
     ipcalc
     iwd
     jadx
     jdk
     jd-gui
     john
     jq
     jupyter
     jython
     k3s
     keepassxc
     kompose
     kubectl
     kubernetes-helm
     kustomize
     lazygit
     libreoffice-fresh
     libsecret
     lshw
     ltrace
     lynis
     mako
     masscan
     mcfly
     mcrypt
     mosh
     mplayer
     mpv
     mtr
     navi
     nethogs
     networkmanager
     networkmanager_dmenu
     neocomp
     ngrep
     ngrok
     nixos-generators
     nmap
     nodejs
     notify-desktop
     ntfs3g
     obsidian
     openconnect
     openssh
     openssl
     openttd
     openvpn
     OVMF
     p7zip
     pandoc
     pass
     pavucontrol
     pciutils
     pdfgrep
     photon
     pinentry
     peco
     protonmail-bridge
     pstree
     pwgen
     python-with-my-packages
     python310
     qemu
     qemu-utils
     qrcp
     qrencode
     radare2
     ranger
     rdesktop
     redshift
     remmina
     ripgrep
     ripgrep-all
     rsync
     ruby
     rustscan
     rxvt-unicode
     screen
     screenfetch
     scrot
     sddm
     signal-desktop
     slack
     socat
     sqlite-web
     sqlmap
     sshfs
     steampipe
     stockfish
     subfinder
     terraform
     testssl
     texlive.combined.scheme-full
     thc-hydra
     thefuck
     tig
     tldr
     tmux
     trufflehog
     tor
     trivy
     twmn
     unrar
     unzip
     velero
     virt-manager
     vim
     vlc
     vue
     w3m
     waybar
     wayvnc
     wget
     whois
     win-virtio
     wireguard-tools
     wireshark-qt
     woeusb
     wpscan
     x11docker
     x11vnc
     xcalib
     xkb-switch-i3
     xlockmore
     xorg.xbacklight
     xorg.xeyes
     xorg.xmodmap
     xwayland
     youtube-dl
     zip
     zlib
     zoom-us
     zotero
     zsh
     zsh-autosuggestions
     zsh-completions
     zsh-powerlevel10k
     zsh-syntax-highlighting
  ];
}