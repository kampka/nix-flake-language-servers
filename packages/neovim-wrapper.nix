{ pkgs, stdenv, lib, makeWrapper, provided-servers, ... }:

{ neovim, language-servers ? [ ] }:
let
  servers = provided-servers ++ language-servers;
in
stdenv.mkDerivation {
  name = "${neovim.name}-with-language-servers";
  version = "22.10.1";


  nativeBuildInputs = [ makeWrapper ];
  phases = [ "installPhase" ];
  installPhase = ''
    mkdir -p $out/bin
    ln -sf ${neovim}/bin/nvim $out/bin/nvim
    wrapProgram $out/bin/nvim --prefix PATH : "${lib.makeBinPath servers }"
  '';
}

