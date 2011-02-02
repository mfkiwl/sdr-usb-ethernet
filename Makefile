
CFLAGS=-O2 -Wall -Werror -std=gnu99 -g
LDFLAGS=-lm

all: sinrom.vhd phasedetectsim pllsim

sinrom.vhd: sinrom
	./sinrom > sinrom.vhd

phasedetectsim: LDFLAGS=-lfftw3 -lpthread -lm
