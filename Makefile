# guide: https://medium.com/dvt-engineering/how-to-write-your-first-linux-kernel-module-cf284408beeb
# sudo apt install gcc make build-essential libncurses-dev exuberant-ctags
# then replace the headers w/ uname -r version you have...
# sudo apt install linux-headers-5.10.0-23-amd64
# note: make sure to sudo apt purge linux-headers-5.10.0-23-amd64 when changing kernels
# load module: sudo insmod hello.ko
# verify it's running: lsmod
# unload module: sudo rmmod hello.ko
# read kernel messages: sudo dmesg
# to track: sudo dmesg --follow

obj-m += hello.o

# define kernel 
KDIR := /lib/modules/`uname -r`/build

# make modules
all:
	make -C $(KDIR) M=$(PWD) modules
clean:
	make -C $(KDIR) M=$(PWD) clean
