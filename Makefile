CFG_TEE_TA_LOG_LEVEL ?= 2
CPPFLAGS += -DCFG_TEE_TA_LOG_LEVEL=$(CFG_TEE_TA_LOG_LEVEL)
BINARY=b9aa5f00-d229-11e4-925c0002a5d5c51b

include $(TA_DEV_KIT_DIR)/mk/ta_dev_kit.mk

all: $(BINARY).ta

$(BINARY).ta: $(BINARY).bin
	rm -f $@
	cat faked_armv7_uta_signed_header.bin $< > $@

clean:
	rm -f $(BINARY).*
	rm -f *.o
