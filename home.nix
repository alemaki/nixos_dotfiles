{ config, pkgs, ... }:

{
  home.file."${config.home.homeDirectory}/.config/Code/User/settings.json" = {
    source = pkgs.writeText "vscode-settings.json" ''
      {
        "files.autoSave": "afterDelay",
        "files.autoSaveDelay": 1000
      }
    '';
    # recursive = false;
  };
}