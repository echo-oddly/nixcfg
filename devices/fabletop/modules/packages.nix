{ config, pkgs, lib, ... } :
with lib;
{
  nixpkgs.config.android_sdk.accept_license = true;

  environment.systemPackages = let
    vimPackages = import ./vim/vimPackages.nix pkgs;
    neovimPackages = import ./vim/neovimPackages.nix pkgs;
  in
    vimPackages ++ neovimPackages ++ (with pkgs; [
  #### COMMAND LINE ####
    abcde
    acpi
    acpid
    anonymousPro
    ascii
    asciidoc
    aspell
    aspellDicts.en
    bench
    bc
    cryptsetup
    dbus_libs
    dos2unix
    espeak
    ethtool
    fakeroot
    ffmpeg
    file
    flac
    fluidsynth
    fop
    fdupes
    fuse_exfat
    ghostscript
    gitAndTools.gitflow
    gitAndTools.gitFull
    gnumake
    gnupg1compat
    gptfdisk
    haveged
    hexedit
    html-tidy
    htop
    iftop
    imagemagick
    indent
    iotop
    jekyll
    jq
    libarchive
    lilypond
    linuxPackages.perf
    lsof
    ltrace
    manpages
    mercurial
    mosh
    ncdu
    ngrep
    nix-prefetch-scripts
    nixops
    nmap
    opusTools
    p7zip
    paperkey
    parted
    (pass.withExtensions (ext: with ext; [ pass-tomb pass-update ]))
    patchelf
    pciutils
    picocom
    pigz
    pixman
    pkgconfig
    pmutils
    psmisc
    pv
    pwgen
    python
    python36Packages.xdot
    qrencode
    rhash
    samba
    screen
    scrypt
    socat
    sqlite
    srm
    ssss
    tarsnap
    tmux
    tor
    tree
    unar
    unzip
    usbutils
    utillinuxCurses
    v4l_utils
    vim_configurable
    wget
    which
    yubikey-personalization
    zbar
    zip
    zsh

  #### GRAPHICAL ####
    ark
    audacity
    blender
    dmenu2
    dzen2
    epdfview
    gparted
    graphviz
    gimp-with-plugins
    higan
    imv
    inkscape
    kate
    kdeApplications.kgpg
    kdeApplications.spectacle
    kdeFrameworks.karchive
    keepassx
    leocad
    librecad
    libreoffice
    mplayer
    mpv
    pavucontrol
    qemu
    scrot
    signal-desktop
    sway
    tor-browser-bundle-bin
    transmission_gtk
    trayer
    vlc
    weston
    wine
    wireshark-qt
    xawtv
    xbindkeys
    xcalib
    xclip
    xdotool
    xlibs.xbacklight
    xlibs.xev
    xlibs.xkbcomp
    xlibs.xkbutils
    xlibs.xkill
    xlibs.xmodmap
    xscreensaver
    zsnes
  ]);
}

