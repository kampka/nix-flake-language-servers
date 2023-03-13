{
  description = "A collection of language server packages";

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};

        typescript-language-server = pkgs.callPackage ./packages/typescript-language-server {};
        yaml-language-server = pkgs.callPackage ./packages/yaml-language-server {};
        astro-language-server = pkgs.callPackage ./packages/astro-language-server {};

        neovimWrapper = pkgs.callPackage ./packages/neovim-wrapper.nix {provided-servers = [typescript-language-server yaml-language-server astro-language-server];};

        formatter = pkgs.alejandra;
      in rec {
        inherit formatter;
        devShell = pkgs.mkShell {
          name = "nix-flake-language-servers";
          packages = with pkgs; [formatter yarn2nix node2nix];
        };
        packages =
          flake-utils.lib.flattenTree
          {
            inherit typescript-language-server yaml-language-server astro-language-server;
          }
          // {inherit neovimWrapper;};
        apps = {
          typescript-language-server = flake-utils.lib.mkApp {drv = packages.typescript-language-server;};
          yaml-language-server = flake-utils.lib.mkApp {drv = packages.yaml-language-server;};
          astro-language-server = flake-utils.lib.mkApp {drv = packages.astro-language-server;};
        };
      }
    );
}
