{
  description = "Astro project dev shell with Node + pnpm";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = import nixpkgs { inherit system; };
      in {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [ nodejs_20 pnpm ];

          shellHook = ''
            echo "🚀 Entered Astro dev shell (Node: $(node -v), pnpm: $(pnpm -v))"
          '';
        };
      });
}

