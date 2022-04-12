ARCH ?= x86
ifeq ($(ARCH),x86)
 CC = gcc
else
 CC = arm-linux-gnueabihf-gcc
endif

hello:hello.c
	$(CC) $^ -o $@
 @echo $(CC)
 
.PHONY:clean
clean:
    rm -rf hello.o hello