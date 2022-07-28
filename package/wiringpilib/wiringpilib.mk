################################################################################
#
# Wiring PI devLib
#
################################################################################

WIRINGPILIB_VERSION = last-stable
WIRINGPILIB_SITE = package/wiringpilib/devLib
WIRINGPILIB_SITE_METHOD = local
WIRINGPILIB_LICENSE = GPLv2

define WIRINGPILIB_BUILD_CMDS
        CFLAGS="-w -mcpu=arm1176jzf-s -mfloat-abi=hard -mfpu=vfp -mtune=arm1176jzf-s -O3 -I$(@D)/wiringPi" $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D) all
	CFLAGS="-w -mcpu=arm1176jzf-s -mfloat-abi=hard -mfpu=vfp -mtune=arm1176jzf-s -O3 -I$(@D)/wiringPi" $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D) static
endef

define WIRINGPILIB_INSTALL_TARGET_CMDS
    cp -a $(@D)/libwiringPiDev.* $(TARGET_DIR)/usr/lib
endef

$(eval $(generic-package))
