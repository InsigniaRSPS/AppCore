#!/bin/bash
# Build script
export CC=/usr/bin/clang
export CXX=/usr/bin/clang++
mkdir -p build_deps
cd build_deps
cmake ../Source/GetDeps -G "Ninja"  -DSTATIC_BUILD=1 -DUSE_LOCAL_DEPS=1
ninja
cd ..
mkdir -p build
cd build
cmake .. -G "Ninja" -DSTATIC_BUILD=1 -DUSE_LOCAL_DEPS=1
ninja
cd ..
