ccflags-y+=-Werror
ccflags-y+=-I$(M)/include/linux -iquote$(M)/generic
ccflags-y+=-I$(src)/include
ccflags-y+=-I$(TA_DEV_KIT_DIR)

obj-m += smaf-optee.o

SRC := $(shell pwd)

all:
	$(MAKE) ARCH=$(ARCH) -C $(KERNEL_SRC) M=$(SRC) modules


clean:
	rm -f *.o *ko .depend *.cmd *.mod.c
