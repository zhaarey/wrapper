all: handle.o main wrapper

handle.o: main.cpp
	~/android-ndk-r23b/standalone/bin/clang++ -Wall -Werror -nostdlib -c -O3 -o handle.o main.cpp

main: handle.o test.c
	~/android-ndk-r23b/standalone/bin/clang -DMyRelease -Wall -Werror -L ./rootfs/system/lib64 -landroidappmusic -lstoreservicescore -lmediaplatform -lc++_shared -O3 -Wall -o rootfs/system/bin/main handle.o test.c

wrapper: wrapper.c
	clang -O3 -Wall -o wrapper wrapper.c

clean:
	rm handle.o wrapper rootfs/system/bin/main
