#!/bin/bash
set -ex

mkdir -p build
cd build
cmake -DCMAKE_INSTALL_PREFIX="${PREFIX}" -DCMAKE_BUILD_TYPE=Release ..
make -j "${CPU_COUNT}"
make check
make install
