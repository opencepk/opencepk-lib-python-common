#!/usr/bin/env bash

TEST_DIR_FROM_ROOT="opencepk_lib_python_common/pypi_bumpversion_check_package/tests-pre-commit-hook"
TEST_DIR="tests-pre-commit-hook"
TEST_SCRIPT_FILENAME=$(basename -- "$0")
TEST_SCRIPT_NAME="${TEST_SCRIPT_FILENAME%.*}"
TEST_TARGET_FILE="README_TEST_PRE_COMMIT.md"

#-------------------------------
# Run the pre-commit hook test
#-------------------------------
echo "${TEST_SCRIPT_NAME}: Running pre-commit using ${TEST_DIR_FROM_ROOT}/.pre-commit-config.yaml"
cd ../../.. 
pre-commit run -a -c "${TEST_DIR_FROM_ROOT}/.pre-commit-config.yaml"

