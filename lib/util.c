#include "lib/util.h"

#include <stdarg.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

void exprintf(const char * f, ...)
{
    va_list args;
    va_start(args, f);
    vfprintf(stderr, f, args);
    va_end(args);
    exit(EXIT_FAILURE);
}

void experror(const char * m)
{
    perror(m);
    exit(EXIT_FAILURE);
}

void * xmalloc(size_t size)
{
    void * res = malloc(size);
    if (!res)
        experror("malloc");
    return res;
}

void * xrealloc(void * ptr, size_t size)
{
    void * res = realloc(ptr, size);
    if (!res)
        experror("realloc");
    return res;
}


void slurp_file(int file, unsigned char * * restrict buffer,
                size_t * restrict offset, size_t * restrict size)
{
    int r;
    do {
        if (*offset == *size) {
            *size += (*size / 2 & -8192) + 8192;
            *buffer = xrealloc(*buffer, *size);
        }
        r = checkz(read(file, *buffer + *offset, *size - *offset), "read");
        *offset += r;
    }
    while (r);
}


void dump_file(int file, const void * data, size_t len)
{
    const unsigned char * start = data;
    const unsigned char * end = start + len;
    for (const unsigned char * p = start; p != end;)
        p += checkz(write(file, p, end - p), "writing output");
}


size_t best22(const unsigned char ** restrict buffer, size_t * restrict bytes)
{
    uint32_t runA = 0;
    uint32_t runB = 0;
    uint32_t runC = 0;
    const unsigned char * badA = *buffer;
    const unsigned char * badB = *buffer;
    const unsigned char * badC = *buffer;
    const unsigned char * best = *buffer;
    const unsigned char * end = *buffer + *bytes;
    size_t bestsize = 0;
    for (const unsigned char * p = *buffer; p != end; ++p) {
        int predicted = __builtin_parity(runC & 0x80401020);
        uint32_t nextC = runC * 2 + (*p & 1);
        const unsigned char * nbC = badC;
        if ((nextC & ~runB) || (runA & ~nextC) || predicted != (nextC & 1))
            nbC = p;
        else if (p - badC >= bestsize) {
            best = badC;
            bestsize = p - badC;
        }

        badC = badA;
        badA = badB;
        badB = nbC;
        runC = runA;
        runA = runB;
        runB = nextC;
    }

    if (bestsize < 64 * 3) {
        *bytes = 0;
        return 0;
    }

    *buffer = best + 32 * 3 - 2;
    bestsize -= 63 * 3;
    *bytes = bestsize;
    return bestsize / 3;
}


size_t best14(const unsigned char ** restrict buffer, size_t * restrict bytes)
{
    uint32_t runA = 0;
    uint32_t runB = 0;
    const unsigned char * badA = *buffer;
    const unsigned char * badB = *buffer;
    const unsigned char * best = *buffer;
    const unsigned char * end = *buffer + *bytes;
    size_t bestsize = 0;
    for (const unsigned char * p = *buffer; p != end; ++p) {
        int predicted = __builtin_parity(runB & 0x80401020);
        int got = !!(*p & 128);
        uint32_t runNext = runB * 2 + got;
        const unsigned char * badNext = badB;
        if (runA != runNext || predicted != got)
            badNext = p;
        else if (p - badB >= bestsize) {
            best = badB;
            bestsize = p - badB;
        }

        badB = badA;
        badA = badNext;
        runB = runA;
        runA = runNext;
    }

    if (bestsize < 64 * 2) {
        *bytes = 0;
        return 0;
    }

    *buffer = best + 32 * 2 - 1;
    bestsize -= 63 * 2;
    *bytes = bestsize;
    return bestsize / 2;
}