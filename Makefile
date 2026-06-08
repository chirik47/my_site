# Makefile - коммитим в репозиторий
.PHONY: help install test run clean

help:
	@echo "Available commands:"
	@echo "  make install  - Install dependencies"
	@echo "  make test     - Run tests"
	@echo "  make run      - Run application"
	@echo "  make clean    - Clean build files"
	@echo "  make git-status - Show git status"

install:
	pip install -r requirements.txt

test:
	pytest tests/

run:
	python src/main.py

clean:
	rm -rf build/ dist/ *.pyc

git-status:
	git status
	git log -1 --oneline