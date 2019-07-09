obj-m := eth-skel.o
all default: modules
install: modules_install
modules modules_install help clean:
	make -C $(KERNEL_SRC) M=$(shell pwd) $@
