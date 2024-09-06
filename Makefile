all: cmdline.o handle.o main wrapper

cmdline.o:
	~/android-ndk-r23b/toolchains/llvm/prebuilt/linux-x86_64/bin/x86_64-linux-android22-clang -Wall -Werror -nostdlib -c -O3 -o cmdline.o cmdline.c 

handle.o: main.cpp
	~/android-ndk-r23b/toolchains/llvm/prebuilt/linux-x86_64/bin/x86_64-linux-android22-clang++ -Wall -Werror -nostdlib -c -O3 -o handle.o main.cpp

main: handle.o test.c cmdline.o
	~/android-ndk-r23b/toolchains/llvm/prebuilt/linux-x86_64/bin/x86_64-linux-android22-clang -DMyRelease -Wall -Werror -L ./rootfs/system/lib64 -landroidappmusic -lstoreservicescore -lmediaplatform -lc++_shared -O3 -Wall -o rootfs/system/bin/main cmdline.o handle.o test.c

wrapper: wrapper.c
	~/android-ndk-r23b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang -O3 -Wall -o wrapper wrapper.c

clean:
	rm handle.o wrapper rootfs/system/bin/main cmdline.o
