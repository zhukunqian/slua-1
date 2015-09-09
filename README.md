#slua 3rd library.
Fastest Unity lua binding via static code generating.

Introduction slua [Document](slua_README.md)

##What's different
This fork integrate with 3rd Lua library.

It has pbc and lpeg Lua library and has been test.

It will add other useful 3rd Lua library in the future.

A submodule in this repo , if you want to build dll in windows you must init and update the submodule like : git submoudle --init update.

##about 3rd library
1.pbc (https://github.com/cloudwu/pbc) is a google protocol buffers library for C without code generation.

2.lpeg (http://www.inf.puc-rio.br/~roberto/lpeg/lpeg.html) is a new pattern-matching library for Lua, based on Parsing Expression Grammars (PEGs).

##How to use slua in unity3d.
See inner demo for help or [Document](doc.md) (in chinese).

##How to use 3rd library in unity3d.
See inner demo for help or [Document](doc_3rd.md).


###How to build library by yourself.
It has sevral shell or bat in the build folder.

The shell or bat will build the library for specially platform.

1.make_ios.sh will build iphone library. You must use it in osx.

2.make_osx.sh will build osx library. You must use it in osx.

3.make_android.sh will build android library. You can use it in osx or linux. But first , you must reset the ndk path in the shell.

4.make-windows-32.cmd will build windows 32bit dll. You must excute it in windows.

5.make-windows-64.cmd will build windows 64bit dll. You must exute it in windows.
