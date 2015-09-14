
PATH=%CD%\MinGW\x64\bin;%PATH%
mkdir window\x86_64

cd luajit-2.0.4
mingw32-make clean
mingw32-make BUILDMODE=static CC="gcc -m64"
copy src\libluajit.a ..\window\x86_64\libluajit.a /y
cd ..

:cd pbc-win
:mingw32-make clean
:mingw32-make BUILDMODE=static CC="gcc -m64" lib
:copy build\libpbc.a ..\window\x86_64\libpbc.a /y
:cd ..

gcc ..\Assets\slua_src\slua.c ^
	lpeg.c ^
	lua-cjson-2.1.0\strbuf.c ^
	lua-cjson-2.1.0\lua_cjson.c ^
	lua-cjson-2.1.0\fpconv.c ^
	pbc-master\src\alloc.c ^
	pbc-master\src\array.c ^
	pbc-master\src\bootstrap.c ^
	pbc-master\src\context.c ^
	pbc-master\src\decode.c ^
	pbc-master\src\map.c ^
	pbc-master\src\pattern.c ^
	pbc-master\src\proto.c ^
	pbc-master\src\register.c ^
	pbc-master\src\rmessage.c ^
	pbc-master\src\stringpool.c ^
	pbc-master\src\varint.c ^
	pbc-master\src\wmessage.c ^
	pbc-master\binding\lua\pbc-lua.c ^
	-o window/x86_64/slua.dll -m64 -shared ^
	-I.\ ^
	-Ilua-cjson-2.1.0 ^
	-Iluajit-2.0.4\src ^
	-Ipbc-master ^
	-Wl,--whole-archive window\x86_64\libluajit.a ^
	-Wl,--no-whole-archive -lwsock32 -static-libgcc -static-libstdc++

copy window\x86_64\slua.dll ..\Assets\Plugins\x64\slua.dll /y
pause
