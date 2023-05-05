{
  stdenv,
  pkgs,
  lib,
  mkYarnPackage,
  fetchFromGitHub,
}: let
  pname = "typescript-language-server";
  version = "3.3.0";
  bunify = import ../bunify.nix {inherit stdenv pkgs;};
in
  bunify {
    inherit pname version;
    package = mkYarnPackage rec {
      inherit pname version;

      src = fetchFromGitHub {
        owner = "typescript-language-server";
        repo = "typescript-language-server";
        rev = "v${version}";
        sha256 = "sha256-RnXO77vDhtmyTTDRlaDrHte3y56Tsu9khlpAulybBF4=";
      };

      buildPhase = ''
        yarn --offline build
      '';

      passthru = {
        nodeAppDir = "libexec/${pname}/deps/${pname}";
      };
      distPhase = ''
        true
      '';

      meta = {
        description = "Language Server Protocol (LSP) implementation for TypeScript using tsserver";
        homepage = "https://github.com/typescript-language-server/typescript-language-server/";
        license = lib.licenses.asl20;
        platforms = lib.platforms.linux;
      };
    };
  }
