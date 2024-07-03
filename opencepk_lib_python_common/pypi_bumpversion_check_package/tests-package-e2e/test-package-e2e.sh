#!/usr/bin/env bash

TEST_DIR="tests-package-e2e"

#-------------------------------
# Run the python package
#-------------------------------
echo "Running in: $(pwd)"
# (cd .. && python find_and_replace_strings/main.py --config ${TEST_DIR}/.find-and-replace.json ${TEST_DIR}/${TEST_TARGET_FILE})
pushd .. > /dev/null
pwd
python3 pypi_bumpversion_check/main.py './${TEST_DIR}/pyproject.test'
popd > /dev/null
