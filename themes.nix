{pkgs, ...}: let
  theme-list = with builtins; attrNames (readDir ./themes);
  themes = builtins.foldl' (xs: x: xs // {"${x}" = mkTheme x;}) {} theme-list;
  mkTheme = name:
    pkgs.stdenv.mkDerivation {
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
in {inherit themes theme-list;}
