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
  bunify = import ../bunify.nix {inherit stdenv pkgs;};
in
  bunify {
    pname = "astro-ls";
    version = "0.0.1";
    package = nodePackages."@astrojs/language-server";
  }
