install_tools:
	pip install pip-tools

compile_prod_dependencies:
	pip-compile --output-file=req/requirements.txt req/in/common.in req/in/prod.in

compile_dev_dependencies:
	pip-compile --output-file=req/requirements.txt req/in/common.in req/in/dev.in

install_dependencies:
	pip install -r ./req/requirements.txt

clear_dependencies:
	pip uninstall -y -r req/requirements.txt
	rm -rf req/requirements.txt

clear_cache:
	find . | grep -E "(/__pycache__$|\.pyc$|\.pyo$)" | xargs rm -rf

