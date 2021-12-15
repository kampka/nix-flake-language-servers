{
  description = "A collection of language server packages";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        typescript-language-server = pkgs.callPackage ./packages/language-server-typescript { };
        yaml-language-server = pkgs.callPackage ./packages/yaml-language-server { };
      in
      rec {
        devShell = pkgs.mkShell {
          name = "nix-flake-language-servers";
          packages = with pkgs; [ nixpkgs-fmt ];
        };
        packages = flake-utils.lib.flattenTree {
          inherit typescript-language-server yaml-language-server;
        };
        apps = {
          typescript-language-server = flake-utils.lib.mkApp { drv = packages.typescript-language-server; };
          yaml-language-server = flake-utils.lib.mkApp { drv = packages.yaml-language-server; };
        };
      }
    );
}
