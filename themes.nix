{pkgs}: let
  allThemes = with builtins; readDir ./themes;
  mkTheme = name:
    pkgs.stdenvNoCC.mkDerivation {
      inherit name;
      src = ./themes/${name};
      dontBuild = true;
      dontConfigure = true;
      dontCheck = true;
      installPhase = ''
        runHook preInstall
        cp -r $src $out
        runHook postInstall
      '';
    };
in
  pkgs.lib.mapAttrs (k: _: mkTheme k) allThemes
