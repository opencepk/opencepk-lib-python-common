#!/usr/bin/env bash

TEST_DIR="tests-package-e2e"

#-------------------------------
# Run the python package
#-------------------------------
echo "Running in: $(pwd)"
pushd .. > /dev/null
python3 pypi_bumpversion_check/main.py './${TEST_DIR}/pyproject.test'
popd > /dev/null
