#!/usr/bin/env bash

if [[ -z "$1" ]]; then echo "usage: $0 <platform>"; exit 1; fi

readonly platform_arg="$1"
cmake_args="-DPLATFORM=$platform_arg"
readonly builddir="build-$platform_arg"

if [[ "$2" != "quick" ]]; then
  rm -rf "$builddir"
  mkdir "$builddir"
fi

if [[ ! -d "$builddir" ]]; then mkdir "$builddir"; fi

cd "$builddir"
conan install .. -s compiler.version=5
cmake .. ${cmake_args}
make -j1
