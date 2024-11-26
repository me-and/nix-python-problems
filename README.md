Simple example for some Nixpkgs behaviour that was confusing me, and has now been resolved at <https://discourse.nixos.org/t/python-packageoverrides-not-overriding-as-expected/56634>.

I'd expect `nix-build` run in this repository to successfully build a basic
Python module, but instead it produces an error:

```
Running phase: pythonRuntimeDepsCheckHook
Executing pythonRuntimeDepsCheck
Checking runtime dependencies for funniest-0.1-py3-none-any.whl
  - setuptools>75.0.0 not satisfied by version 69.5.1.post0
```

I'd have expected the `packageOverrides` in `package.nix` to have ensured that
the Python application runs with an environment where setuptools is v75.1.0,
and therefore satisfies the requirements specified in `setup.py`, but that
clearly doesn't work.  Why?

Thanks to <https://python-packaging.readthedocs.io/en/latest/minimal.html> for
the shape of this test scenario, and to
<https://nixos.org/manual/nixpkgs/stable/#python> for getting me this far with
failing to solve my problems...
