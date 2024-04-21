

.PHONY: all

all: build_wheel list_wheel

build_wheel: clean
	python -m build --wheel . 

list_wheel: build_wheel
	unzip -l dist/*.whl

build_sdist: clean
	python -m build --sdist .

list_sdist: build_sdist
	tar -ztvf dist/*.tar.gz

build_inplace: clean
	python setup.py build_ext --inplace

install: build_wheel
	pip install --force-reinstall dist/*.whl

clean:
	rm -rf .mypy_cache .pytest_cache
	rm -rf _skbuild
	rm -rf build dist MANIFEST.in
	rm -rf fibbymodule.c ffib1-f2pywrappers.f
	rm -rf fibby/*.so
	find . -name '*.egg-info' -type d | xargs rm -rf  
	find . -name '__pycache__' -type d | xargs rm -rf  

test: build_inplace
	pytest -v

tox: clean
	tox