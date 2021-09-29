#!/bin/bash

set -ex

if [[ "${target_platform}" == osx-* ]]; then
  export CFLAGS="${CFLAGS} -isysroot ${CONDA_BUILD_SYSROOT}"
  export CXXFLAGS="${CXXFLAGS} -isysroot ${CONDA_BUILD_SYSROOT}"
  export LDFLAGS="${LDFLAGS} -isysroot ${CONDA_BUILD_SYSROOT}"i
fi
