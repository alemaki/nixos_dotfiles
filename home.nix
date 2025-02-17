{ config, pkgs, ... }:

{
  home.file."${config.home.homeDirectory}/.config/VSCodium/User/settings.json" = {
    source = pkgs.writeText "vscode-settings.json" ''
      {
        "files.autoSave": "afterDelay",
        "files.autoSaveDelay": 1000,
        "workbench.colorTheme": "Default High Contrast"
      }
    '';
    # mode = "0644";
    # recursive = false;
  };
}