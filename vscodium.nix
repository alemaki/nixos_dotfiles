{ pkgs, ... }:

let
  vscodeSettings = pkgs.writeText "vscode-settings.json" ''
    {
      "files.autoSave": "afterDelay",
      "files.autoSaveDelay": 1000
    }
  '';
in
{
  environment.systemPackages = with pkgs; [
    (vscode-with-extensions.override {
      vscode = vscodium;
      vscodeExtensions = with vscode-extensions; [
        jnoortheen.nix-ide
      ];
    })
  ];

  home.file."${pkgs.vscodium}/.config/Code/User/settings.json" = vscodeSettings;
}