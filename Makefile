.PHONY: venv
venv:
	echo "layout python3" > .envrc
	direnv allow

.PHONY: init
init:
	pip install -U pip
	pip install pip-tools
	pip install wheel

.PHONY: reqs
reqs:
	pip-compile
	pip install -r requirements.txt

.PHONY: nb
nb:
	cd book && jupyter notebook
