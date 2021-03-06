{ lib, mkYarnPackage, fetchFromGitHub, makeWrapper, nodejs-16_x }:

mkYarnPackage rec {
  pname = "typescript-language-server";
  version = builtins.replaceStrings [ "\n" ] [ "" ] (builtins.readFile ./src/VERSION);

  src = fetchFromGitHub {
    owner = "typescript-language-server";
    repo = "typescript-language-server";
    rev = "v${version}";
    sha256 = "sha256-ljQEx7cUkWkgBPFzSW99UvJ8Qe/w/WhOrdVr9ATniPI=";
  };

  packageJSON = ./src/package.json;
  yarnNix = ./src/yarn-dependencies.nix;

  nativeBuildInputs = [ makeWrapper ];

  buildPhase = ''
    yarn --offline build
  '';

  postInstall = ''
    chmod a+x $out/bin/${pname}
    wrapProgram $out/bin/${pname} --prefix PATH : ${lib.makeBinPath [ nodejs-16_x ]}
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
