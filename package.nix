{
  python3,
}: let
  packageOverrides = final: prev: {
    # Taken from the NixOS 24.11 branch.
    setuptools = prev.setuptools.overridePythonAttrs (prev: {
      version = "75.1.0";
      src = prev.src.overrideAttrs {
        rev = "refs/tags/v75.1.0";
        hash = "sha256-ZvhXfusayUHHFXl7ZBksFhxTi1p+Va6qAwq7Fo7Tg/s=";
      };
    });
  };

  python3Packages = (python3.override {inherit packageOverrides;}).pkgs;

  inherit (python3Packages) buildPythonApplication setuptools;
in
  buildPythonApplication {
    pname = "funniest";
    version = "0.1";
    src = ./.;
    pyproject = true;
    build-system = [setuptools];
  }
