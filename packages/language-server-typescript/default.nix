{ lib, mkYarnPackage, fetchFromGitHub, makeWrapper, nodejs-10_x }:

mkYarnPackage rec {
  pname = "typescript-language-server";
  version = "${lib.strings.sanitizeDerivationName (builtins.readFile ./src/VERSION) }";

  src = fetchFromGitHub {
    owner = "typescript-language-server";
    repo = "typescript-language-server";
    rev = "v${version}";
    sha256 = "sha256-K3PuNriY9BKXIuaQ6NRcFnhTetQrFJM3wtRBThPg0T8=";
  };

  packageJSON = ./src/package.json;
  yarnNix = ./src/yarn-dependencies.nix;

  nativeBuildInputs = [ makeWrapper ];

  buildPhase = ''
    yarn --offline build
  '';

  postInstall = ''
    chmod a+x $out/bin/${pname}
    wrapProgram $out/bin/${pname} --prefix PATH : ${lib.makeBinPath [ nodejs-10_x ]}
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
