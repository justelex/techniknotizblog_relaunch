# This imports the nix package collection,
# so we can access the `pkgs` and `stdenv` variables
with import <nixpkgs> {};

# Make a new "derivation" that represents our shell
stdenv.mkDerivation {
  name = "defaultbuilder";

  # The packages in the `buildInputs` list will be added to the PATH in our shell
  buildInputs = [
    # cowsay is an arbitary package
    # see https://nixos.org/nixos/packages.html to search for more
    pkgs.cowsay
    pkgs.figlet
    pkgs.lolcat
	pkgs.ruby
	pkgs.bundler
	pkgs.jekyll
	pkgs.nodejs
	rubyPackages_2_5.json
	pkgs.zlib
	#pkgs.python38Packages.setuptools
 ];
	  shellHook = ''
    figlet "defaultbuilder  DEV ENV" | lolcat --freq 0.5
  '';
}

