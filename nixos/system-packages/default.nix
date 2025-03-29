{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    alsa-utils
    brightnessctl
    docker
    evince
    ffmpegthumbnailer
    file-roller
    gcc
    git
    gnumake
    go
    gparted
    kitty
    lsof
    lxqt.lxqt-policykit
    microsoft-edge
    pavucontrol
    python3
    tmux
    unzip
    usbutils
    vim
    wezterm
    wget
    wl-clipboard
    xdg-user-dirs
    xfce.thunar
    xfce.thunar-archive-plugin
    xfce.thunar-media-tags-plugin
    xfce.thunar-volman
    xfce.tumbler
    zellij
    zip
  ];
}
