
PATH=%CD%\MinGW\x86\bin;%PATH%
mkdir window\x86

cd luajit-2.0.4
mingw32-make clean
mingw32-make BUILDMODE=static CC="gcc -m32"
copy src\libluajit.a ..\window\x86\libluajit.a /y

cd ..\pbc-win
mingw32-make clean
mingw32-make BUILDMODE=static CC="gcc -m32" lib
copy build\libpbc.a ..\window\x86\libpbc.a /y
cd ..

gcc ..\Assets\slua_src\slua.c lpeg.c pbc-win\binding\lua\pbc-lua.c -o window/x86/slua.dll -m32 -shared -I.\ -Iluajit-2.0.4\src -Ipbc-win -Wl,--whole-archive window\x86\libluajit.a window\x86\libpbc.a -Wl,--no-whole-archive -lwsock32 -static-libgcc -static-libstdc++

copy window\x86\slua.dll ..\Assets\Plugins\x86\slua.dll /y
pause
