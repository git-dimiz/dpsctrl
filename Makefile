PYPROJECT_TOML=pyproject.toml
VERSION=$(shell grep version $(PYPROJECT_TOML) | grep -o "\".*\"" | sed 's/\"//g')
PKG_NAME=dpsctrl

all: install

.PHONY: pip
pip:
	python3 -m pip install --upgrade pip
	python3 -m pip install setuptools
	python3 -m pip install build

.PHONY: build
build: pip
	python3 -m build

.PHONY: install
install: build
	python3 -m pip install --force-reinstall dist/$(PKG_NAME)-$(VERSION)-py3-none-any.whl

.PHONY: uninstall
uninstall:
	python3 -m pip uninstall --yes $(PKG_NAME)

.PHONY: clean
clean:
	rm -rf dist
	rm -rf *.egg-info