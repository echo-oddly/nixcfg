{ config, pkgs, ... } :
{
  ######## DRIVERS ##########
  hardware.opengl = {
    driSupport32Bit = true;
    s3tcSupport = true;
  };

  ######## FONTS ############
  fonts = {
    fontconfig.enable = true;
    enableFontDir = true;
    fonts = [
      pkgs.anonymousPro
      #pkgs.bakoma_ttf
      #pkgs.corefonts
      #pkgs.cm_unicode
      #pkgs.junicode
      #pkgs.ucsFonts
      #pkgs.unifont
      #pkgs.vistafonts
    ];
  };

  ######## XSERVER #########
  services.xserver = {
    videoDrivers = ["intel"];
    enable = true;
    layout = "us";
    displayManager = {
      sddm = {
        enable = true;
        autoNumlock = true;
      };
    };
    desktopManager = {
      xterm.enable = false;
      kde5.enable = false;
      default = "none";
    };
    windowManager = {
      default = "xmonad";
      xmonad = {
        enable = true;
        enableContribAndExtras = true;
        extraPackages = self: [
          self.xmonad-contrib
          self.xmonad-extras
          self.xmobar
        ];
      };
    };
    defaultDepth = 24;
    autorun = true;
    exportConfiguration = true;
    xkbOptions = "terminate:ctrl_alt_bksp, numpad:mac";
    synaptics = {
      enable = true;
      accelFactor = "0.05";
      maxSpeed = "10";
      twoFingerScroll = true;
      additionalOptions =
      ''
        Option "HorizTwoFingerScroll" "1"
        Option "VertTwoFingerScroll"  "1"
        Option "VertScrollDelta"      "-80"
        Option "HorizScrollDelta"     "-70"
        #Option "CircularScrolling"    "on"
        #Option "CircScrollTrigger"    "0"
      '';
    };
  };
}

