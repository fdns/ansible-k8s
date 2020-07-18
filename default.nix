with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "pip-env";
  buildInputs = [
    # System requirements.
    readline
    openssl

    # Python requirements (enough to get a virtualenv going).
    python3Full
    python3Packages.boto
    python3Packages.ansible
  ];
  src = null;
}
