ifeq ($(CONFIG_MACH_XIAOMI_SDM845),y)
obj-$(CONFIG_POWER_SUPPLY) += power_supply/
obj-$(CONFIG_INPUT_TOUCHSCREEN) += touchscreen/
else
ccflags-y := -Wno-unused-function
obj-y := stub.o
endif
