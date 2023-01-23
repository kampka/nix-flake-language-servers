{
  lib,
  mkYarnPackage,
  fetchFromGitHub,
  makeWrapper,
  nodejs-16_x,
}:
mkYarnPackage rec {
  pname = "typescript-language-server";
  version = "3.0.3";

  src = fetchFromGitHub {
    owner = "typescript-language-server";
    repo = "typescript-language-server";
    rev = "v${version}";
    sha256 = "sha256-T/PD7kPkQ6H22gJzR7vLe8MRheCsESeK6+16ZGUvyh0=";
  };

  nativeBuildInputs = [makeWrapper];

  buildPhase = ''
    yarn --offline build
  '';

  postInstall = ''
    chmod a+x $out/bin/${pname}
    wrapProgram $out/bin/${pname} --prefix PATH : ${lib.makeBinPath [nodejs-16_x]}
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
}
