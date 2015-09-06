
cd android/jni
./build_arm_v7.sh
./build_x86.sh
cd ../../
cp ./android_lib/armeabi-v7a/libslua.so ../Assets/Plugins/Android/libs/armeabi-v7a/libslua.so
cp ./android_lib/x86/libslua.so ../Assets/Plugins/Android/libs/x86/libslua.so

