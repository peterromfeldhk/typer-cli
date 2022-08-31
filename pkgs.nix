let
  rev = "9511d1a4baf438693dbc631d63ecf17b157af5f9";
  sha = "1psq08d6hypmma3v9v3yjzbkrlgx9gc2my7yq761s293fw0wlkrg";

in (import (builtins.fetchTarball {
    name = "nixpkgs-pinned-${rev}";
    url = "https://github.com/NixOS/nixpkgs/archive/${rev}.tar.gz";
    sha256 = sha;
  }) {
    overlays = [
      # (import ./overlay.nix)
    ];
})
