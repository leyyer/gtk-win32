#run this from mozilla-build\start-msvc11.bat
#cd /c/mozilla-build/hexchat/libffi-3.0.12

./configure CC=$(pwd)/msvcc.sh LD=link CPP='cl -nologo -EP' CFLAGS='-Od' --build=i686-pc-mingw32
make clean
make
