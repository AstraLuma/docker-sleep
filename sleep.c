#include <unistd.h>
#include <limits.h>

int main() {
	for(;;) {
        sleep(UINT_MAX);
    }
}
