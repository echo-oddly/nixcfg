{ config, pkgs, ... }:

{
	config.nixpkgs.config.allowUnfree = true;
	config.environment.systemPackages = with pkgs; [
#		abiword
		acpi
		acpitool
		acpid
		arduino_core
		ascii
		asciidoc
		aspell
		aspellDicts.en
	#	audacity
	#	bitcoin
	#	blender
	#	bsdgames
	#	cdrkit
	#	conky
	#	cowsay
	#	chromium
		cryptsetup
	#	dmenu
	#	dosbox
	#	dwm
		dzen2
		ethtool
		evtest
		fakeroot
		ffmpeg
		file
	#	firefoxWrapper
		fluidsynth
		fuse_exfat
		ghostscript
	#	gimp
		gitAndTools.gitFull
	#	gitAndTools.gitAnnex
		glxinfo
	#	gnuplot
		go
		gparted
		gptfdisk
		gutenprint
	#	haskellPackages.ghc
	#	haskellPackages.haskellPlatform
	#	haskellPackages.idris
	#	herbstluftwm
		htop
		iftop
		imagemagick
	#	inkscape
	#	irssi
	#	kde4.ark
	#	kde4.konsole
	#	kde4.okular
	#	kde4.kdemultimedia
	#	kde4.kdegraphics
	#	kde4.kdeutils
	#	kde4.applications
	#	kde4.kdegames
	#	kde4.kdeedu
	#	kde4.kdebindings
	#	kde4.kdeaccessibility
	#	kde4.kde_baseapps
	#	kde4.kactivities
	#	kde4.kdeadmin
	#	kde4.kdeartwork
	#	kde4.kde_base_artwork
	#	kde4.kdenetwork
	#	kde4.kdepim
	#	kde4.kdepimlibs
	#	kde4.kdeplasma_addons
	#	kde4.kdesdk
	#	kde4.kdetoys
	#	kde4.kde_wallpapers
	#	kde4.kdewebdev
	#	kde4.oxygen_icons
	#	kde4.kdebase_workspace
	#	kde4.kdelibs
	#	kde4.kdevelop
	#	kde4.kdevplatform
		keepassx2
		libarchive
		lilypond
		lsof
		lyx
		manpages
		mc
		mercurial
		mplayer
	#	mumble
	#	mupen64plus
	#	mutt
		ncmpcpp
	#	neverball
		nmap
	#	nodejs
		ntp
		octave
		openconnect
	#	openjdk
		opusTools
		p7zip
		patchelf
	#	pidgin
	#	pidginotr
		pixman
		pkgconfig
		pmutils
		psmisc
		pv
		pwgen
		qemu
	#	R
		rdiff_backup
		remind
		rpm
	#	rxvt
	#	samba
		screen
		spidermonkey
	#	stalonetray
	#	stellarium
	#	telnet
	#	texLiveBeamer
	#	texLive
	#	thunderbird
	#	tor
	#	torchat
	#	transmission
	#	unetbootin
		unrar
		unzip
		utillinuxCurses
	#	verilog
	#	vifm
		vim_configurable
	#	linuxPackages.virtualbox
		vlc
		w3m
	#	wayland
	#	weston
		wget
		which
	#	wicd
		xbindkeys
	#	xcalib
	#	xclip
	#	xlibs.xorgserver
		zip
		zsh
	#	zsnes
	];
}

