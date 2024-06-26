#include <cstdio>
#include <exception>
#include <functional>

extern "C" void handle(int fd);

extern "C" uint8_t handle_cpp(int fd) {
    try {
        handle(fd);
        return 1;
    } catch (const std::exception &e) {
        fprintf(stderr, "[!] catched an exception: %s\n", e.what());
        return 0;
    }
}

static void endLeaseCb(int const &c) {
    fprintf(stderr, "[.] end lease code %d\n", c);
}

static void pbErrCb(void *) {
    fprintf(stderr, "[.] playback error\n");
}

extern "C" std::function<void (int const&)> endLeaseCallback(endLeaseCb);
extern "C" std::function<void (void *)> pbErrCallback(pbErrCb);