ccflags-y+=-Werror
ccflags-y+=-I$(M)/include/linux -iquote$(M)/generic
ccflags-y+=-I$(src)/include
ccflags-y+=-I$(TA_DEV_KIT_DIR)

obj-m += smaf-optee.o

all:
	$(MAKE) ARCH=$(ARCH) -C $(KDIR) M=$(CURDIR) modules
