#!/bin/bash
set -e

. ./ci/travis/lib.sh

build_default() {
    . ./ci/travis/build_project.sh
    . ./build/cppcheck.sh
}

build_astyle() {
    . ./build/astyle.sh
}

build_${BUILD_TYPE:-default}
