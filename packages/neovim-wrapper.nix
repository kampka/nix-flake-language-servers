{pkgs, stdenv, lib, makeWrapper, servers, ...}:

{ neovim }:
stdenv.mkDerivation {
  name = "${neovim.name}-with-language-servers";
  version = "2021-12-15";


  nativeBuildInputs = [ makeWrapper ];                                     
  phases = [ "installPhase" ];                                                                                                                                                           
  installPhase = ''
    set -x
    mkdir -p $out/bin
    ln -sf ${neovim}/bin/nvim $out/bin/nvim
    wrapProgram $out/bin/nvim --prefix PATH : "${lib.makeBinPath servers }"
  '';
}

