CC := gcc
CFLAGS := -g
LDFLAGS := -lm
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
	LDFLAGS += -lrt
endif


all: mixing

mixing: mixing.c
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)
