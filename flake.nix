{
  description = "A collection of language server packages";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        typescript-language-server = pkgs.callPackage ./packages/language-server-typescript { };
      in
      rec {
        devShell = pkgs.mkShell {
          name = "nix-flake-language-servers";
          packages = with pkgs; [ nixpkgs-fmt ];
        };
        packages = flake-utils.lib.flattenTree {
          inherit typescript-language-server ;
        };
        apps = {
          typescript-language-server = flake-utils.lib.mkApp { drv = packages.typescript-language-server; };
        };
      }
    );
}
