# by default nix uses channel that can be different form setup to setup
# pin package tree to ensure every machine has the same outcome
with (import ./pkgs.nix);

let

  this-python = pkgs.python39;

in with pkgs; mkShell {
  buildInputs = [
    this-python
    (poetry.override { python = this-python; })
  ];
}
