.PHONY: create-env update-env

REPO=$(shell basename $(CURDIR))

create-env:
	python3 -m venv .$(REPO);
	source .$(REPO)/bin/activate; \
			pip3 install --upgrade  -r requirements-dev.txt; \
			pip install --editable .;
	echo --> Don't forget to add the google api key as secrets/cli-admin.json;

update-env:
	source .$(REPO)/bin/activate; \
	pip3 install --upgrade -r requirements-dev.txt;

attach-kernel:
	python -m ipykernel install --user --name=$(REPO);

run-docs: # To run docs local
	mkdocs serve
