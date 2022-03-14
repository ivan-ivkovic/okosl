#include <stdio.h>
#include <stdlib.h>
#include <signal.h>

void signal_handle(int sig_code) {
    if (sig_code == SIGINT) {
        printf("Primljen INT. Kraj programa!\n");
        exit(0);
    }
    else if (sig_code == SIGUSR1)
        printf("Primiljen USR1\n");
}

int main() {
    if (signal(SIGINT, signal_handle) == SIG_ERR)
        exit(1);

    if (signal(SIGUSR1, signal_handle) == SIG_ERR)
        exit(1);

    while (1)
        sleep(1);

    return 0;
}
