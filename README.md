#slua 3rd library.
Fastest Unity lua binding via static code generating.

Introduction slua [Document](slua_README.md)

###What's different
This fork integrate with 3rd Lua library.

We already have pbc , lpeg , cjson , lua-socket , sproto librarys and more and more in the future.

The library is already been test in Mac , Iphone , Android , Windows.

Website: http://www.luzexi.com

Email: jesse_luzexi@163.com


###MinGW for windows build
MinGW , a contraction of "Minimalist GNU for Windows", is a minimalist development environment for native Microsoft Windows applications.

MinGW be a submodule in this repo and about 300 MB , If you have to build dll in windows you must init and update the submodule like : git submoudle update --init.

###About 3rd library
1.pbc (https://github.com/cloudwu/pbc) is a google protocol buffers library for C without code generation.

2.lpeg (http://www.inf.puc-rio.br/~roberto/lpeg/lpeg.html) is a new pattern-matching library for Lua, based on Parsing Expression Grammars (PEGs).

3.lua-cjson (http://www.kyne.com.au/~mark/software/lua-cjson.php) provides JSON support for Lua.

4.lua-socket (http://w3.impa.br/~diego/software/luasocket/home.html) is a Lua extension library that is composed by two parts: a C core that provides support for the TCP and UDP transport layers, and a set of Lua modules that add support for functionality commonly needed by applications that deal with the Internet.

5.sproto (https://github.com/cloudwu/sproto) is an efficient serialization library for C, and focuses on lua binding. It's like Google protocol buffers, but much faster.

##How to use slua in unity3d.
See inner demo for help or [Document](doc.md) (in chinese).

##How to use 3rd library in unity3d.
See inner demo for help or [Document](doc_3rd.md).


###How to build library by yourself.
It has sevral shell or bat in the build folder. If you have to choose some of theirs , you can modify the build scripts by yourself. It's simple I think if you really want.

The shell or bat in the build folder can build the library for specially platform:

1.make_ios.sh will build iphone library in osx.

2.make_osx.sh will build osx library in osx.

3.make_android.sh will build android library. You can execute it in osx or linux. But first , please reset the ndk path in the shell.

4.make-windows-32.cmd will build windows 32bit dll in windows 32-bit or 64-bit.

5.make-windows-64.cmd will build windows 64bit dll in windows 64-bit.


###TODO
1.Add lua-cjson library in slua. ( Finished )

2.Add lua-socket library in slua. ( Finished )

3.Merge slua v1.x  ( Finished )

4.Add sproto library in slua. ( Finished )

5.Add LuaSQLite library in slua.

6.Add ffi + curl library in slua.
