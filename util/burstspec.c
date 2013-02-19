// Analyse a burst capture.

#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#include "lib/registers.h"
#include "lib/usb.h"
#include "lib/util.h"

#define CAPTURE_BYTES 65536
#define BURST_SIZE 2048

static inline int get14(const unsigned char * p)
{
    int r = (p[0] + p[1] * 256) & 0x3fff;
    if (r & 0x2000)
        r -= 0x4000;
    return r;
}


static void load_samples(const unsigned char * buffer, double * samples)
{
    // First find the last overrun and start flags.
    int over = 1;
    int start = -1;
    for (int i = 1; i < CAPTURE_BYTES; i += 2) {
        if (buffer[i] & 128)
            over = i;
        if (buffer[i] & 64)
            start = i;
    }
    if (start < over + BURST_SIZE * 4)
        errx(1, "Not enough data.\n");

    const unsigned char * p = buffer + start - BURST_SIZE * 4 - 1;
    if (memcmp(p, p + BURST_SIZE * 2, BURST_SIZE * 2) != 0)
        errx(1, "Copies do not match.");

    for (int i = 0; i < BURST_SIZE; ++i)
        samples[i] = get14(p + 2 * i);
}


int main (int argc, const char ** argv)
{
    if (argc != 2)
        errx(1, "Usage: <filename>.");

    // Slurp a truckload of data.
    libusb_device_handle * dev = usb_open();

    static const unsigned char burst[] = {
        REG_ADDRESS, REG_MAGIC, MAGIC_MAGIC,
        REG_FLASH, 0x0f, REG_FLASH, 0x8f };
    usb_send_bytes(dev, burst, sizeof burst);

    unsigned char * buffer = usb_slurp_channel(
        dev, CAPTURE_BYTES, XMIT_BURST, -1, 0);
    usb_close(dev);

    double * samples = xmalloc(BURST_SIZE * sizeof(double));
    load_samples(buffer, samples);
    free(buffer);

    float * output = spectrum(samples, BURST_SIZE);
    free(samples);

    dump_path(argv[1], output, BURST_SIZE / 2 * sizeof(float));
    free(output);

    return 0;
}