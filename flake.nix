{
  description = "A collection of language server packages";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        typescript-language-server = pkgs.callPackage ./packages/language-server-typescript { };
        yaml-language-server = pkgs.callPackage ./packages/yaml-language-server { };

        neovimWrapper = pkgs.callPackage ./packages/neovim-wrapper.nix { provided-servers = [ typescript-language-server yaml-language-server ]; };

      in
      rec {
        devShell = pkgs.mkShell {
          name = "nix-flake-language-servers";
          packages = with pkgs; [ nixpkgs-fmt yarn2nix ];
        };
        packages = flake-utils.lib.flattenTree
          {
            inherit typescript-language-server yaml-language-server;
          } // { inherit neovimWrapper; };
        apps = {
          typescript-language-server = flake-utils.lib.mkApp { drv = packages.typescript-language-server; };
          yaml-language-server = flake-utils.lib.mkApp { drv = packages.yaml-language-server; };
        };
      }
    );
}
