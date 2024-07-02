#!/usr/bin/env bash

TEST_DIR="tests-package-e2e"
TEST_SCRIPT_FILENAME=$(basename -- "$0")
TEST_SCRIPT_NAME="${TEST_SCRIPT_FILENAME%.*}"
TEST_TARGET_FILE="README_TEST_PACKAGE.md"

#-------------------------------
# Run the python package
#-------------------------------
echo "${TEST_SCRIPT_NAME}: Running pre-commit using ${TEST_DIR}/.pre-commit-config.yaml"
# (cd .. && python find_and_replace_strings/main.py --config ${TEST_DIR}/.find-and-replace.json ${TEST_DIR}/${TEST_TARGET_FILE})
cd ..
python3 pypi_bumpversion_check_package/pypi_bumpversion_check/main.py './opencepk_lib_python_common/pypi_bumpversion_check_package/tests-pre-commit-hook/pyproject.test'
