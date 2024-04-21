from skbuild import setup

setup(
    name="fibby",
    version="0.0.1",
    description="a minimal example package (fortran version)",
    license="MIT",
    packages=["fibby"],
    python_requires=">=3.7",
    cmake_with_sdist=True,
    package_data={"fibby": ["fibby.so"]},
)
