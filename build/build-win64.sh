
PATH=%CD%\MinGW\x64\bin;%PATH%
mkdir window\x86_64

cd luajit-2.0.4
mingw32-make clean
mingw32-make BUILDMODE=static CC="gcc -m64"
copy /f src\libluajit.a ..\window\x86_64\libluajit.a

cd ..\pbc-win
mingw32-make clean
mingw32-make BUILDMODE=static CC="gcc -m64"
copy /f build\libpbc.a ..\window\x86_64\libpbc.a
cd ..

gcc ..\Assets\slua_src\slua.c \
	lpeg.c \
	pbc-win\binding\lua\pbc-lua.c \
	-o window/x86_64/slua.dll -m64 -shared \
	-I.\ \
	-Iluajit\src \
	-Ipbc-win \
	-Wl,--whole-archive \
	window\x86_64\libluajit.a \
	window\x86_64\libpbc.a \
	-Wl,--no-whole-archive -lwsock32 -static-libgcc -static-libstdc++

pause
