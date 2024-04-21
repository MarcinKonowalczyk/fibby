# fibby

Extended sxample fo [f2py usage](https://numpy.org/doc/stable/f2py/usage.html) with
[scikit-build](https://numpy.org/doc/stable/f2py/buildtools/skbuild.html) backend.
`fibby` is compiled to a package, and builds a correct wheel.

Obvious makefile with a few targets is provided for convenience.

For now the wheel distribution is working fine, but the sdist is not working -- 
compare the content of the wheel (`make list_wheel`) and the sdist
(`make list_sdist`) to see the difference.

Note the `make clean` is necessary to remove the previous build artifacts.
Otherwise build might get confused.