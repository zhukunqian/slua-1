#!/usr/bin/env bash
cd "$( dirname "${BASH_SOURCE[0]}" )"

cd pbc
make clean
xcodebuild
cp -f ./Build/Products/Release/libpbc.a ./Build/libpbc.a
cd ..

cd lua-5.1.5/slua
xcodebuild
cp -r ./build/Release/slua.bundle ../../../Assets/Plugins/

cd -
