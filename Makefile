.PHONY: help install dev test lint format clean run docs

help:
	@echo "Quick Ops Automation Platform - Makefile Commands"
	@echo ""
	@echo "Available commands:"
	@echo "  make install      - Install dependencies"
	@echo "  make dev          - Setup development environment"
	@echo "  make test         - Run unit tests"
	@echo "  make test-cov     - Run tests with coverage"
	@echo "  make lint         - Run code linting"
	@echo "  make format       - Format code with black"
	@echo "  make clean        - Clean build artifacts"
	@echo "  make run          - Run the platform"
	@echo "  make docs         - Generate documentation"
	@echo ""

install:
	pip install -r requirements.txt

dev: install
	pip install -e .
	echo 'Development environment ready!'

test:
	pytest tests/ -v

test-cov:
	pytest tests/ -v --cov=src --cov-report=html --cov-report=term

lint:
	flake8 src/ tests/
	pylint src/

mypy:
	mypy src/ --ignore-missing-imports

format:
	isort src/ tests/
	black src/ tests/

clean:
	find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
	find . -type f -name '*.pyc' -delete
	find . -type f -name '*.pyo' -delete
	rm -rf build/ dist/ *.egg-info/ .coverage .pytest_cache/ htmlcov/

run:
	python -m src.main

docs:
	cd docs && make html
	@echo "Documentation built in docs/_build/html/index.html"
