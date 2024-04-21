

.PHONY: all

package:
	python -m build --wheel . 

list:
	unzip -l dist/*.whl

build:
	python setup.py build_ext --inplace

install:
	pip install --force-reinstall dist/*.whl

clean:
	rm -rf .mypy_cache .pytest_cache .tox/
	rm -rf _skbuild
	rm -rf build dist MANIFEST.in
	rm -rf fibbymodule.c ffib1-f2pywrappers.f
	rm -rf fibby/*.so
	find . -name '*.egg-info' -type d | xargs rm -rf  
	find . -name '__pycache__' -type d | xargs rm -rf  

test:
	python -m unittest discover -v -s tests