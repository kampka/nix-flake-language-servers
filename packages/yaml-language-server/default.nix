{ lib, mkYarnPackage, fetchFromGitHub, makeWrapper, nodejs }:

mkYarnPackage rec {
  pname = "yaml-language-server";
  version = builtins.replaceStrings [ "\n" ] [ "" ] (builtins.readFile ./src/VERSION);

  src = fetchFromGitHub {
    owner = "redhat-developer";
    repo = "yaml-language-server";
    rev = version;
    sha256 = "sha256-mfFrmT85BstemZnn4iZl5Em05dSG7HDGbV+WYt+qb8c=";
  };

  packageJSON = ./src/package.json;
  yarnNix = ./src/yarn-dependencies.nix;

  nativeBuildInputs = [ makeWrapper ];

  yarnFlags = [ "--offline" ];


  buildPhase = ''
    yarn run build
  '';
  passthru = {
    nodeAppDir = "libexec/${pname}/deps/${pname}";
  };
  distPhase = ''
    true
  '';

  meta = {
    description = "Language Server Protocol (LSP) implementation for YAML";
    homepage = "https://github.com/redhat-developer/yaml-language-server/";
    license = lib.licenses.mit;
    platforms = lib.platforms.linux;
  };
}
