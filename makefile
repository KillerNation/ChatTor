CC = gcc
CFLAGS = -O2 -march=native -fstack-protector-all

all: socket

socket:
	mkdir -p bin
	$(CC) $(CFLAGS) -Wall -xc -o bin/web_socket_server src/socket.c -lcrypto

clean:
	rm bin/*
