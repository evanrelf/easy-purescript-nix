{ pkgs ? import <nixpkgs> {} }:

import (
  pkgs.fetchFromGitHub {
    owner = "evanrelf";
    repo = "spago2nix";
    rev = "89f60cd07aae71f83aa5a8eece7adf67cf68d471";
    sha256 = "1xakprpb6r95snq56xrhhbwp1xhhzqjsrkh63al05qfvmv9q41k3";
  }
) {
  inherit pkgs;
  spago = import ./spago.nix { inherit pkgs; };
}
