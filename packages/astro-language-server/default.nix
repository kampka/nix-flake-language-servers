{
  stdenv,
  pkgs,
  lib,
  ...
}: let
  nodePackages = import ./node-composition.nix {
    inherit pkgs;
    inherit (stdenv.hostPlatform) system;
  };
in
  nodePackages."@astrojs/language-server"
