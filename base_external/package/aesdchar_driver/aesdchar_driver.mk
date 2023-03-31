##############################################################
#
# AESDCHAR_DRIVER
#
##############################################################
AESDCHAR_DRIVER_VERSION = '176ac66ac4f1b875cde259333b92a29df3a9d269'
AESDCHAR_DRIVER_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-hgajapathy.git'
AESDCHAR_DRIVER_SITE_METHOD = git
AESDCHAR_DRIVER_GIT_SUBMODULES = YES

# for local build
# AESDCHAR_DRIVER_SITE = '/home/haga9942/assignments-3-and-later'
# AESDCHAR_DRIVER_SITE_METHOD = local
# AESDCHAR_DRIVER_MODULE_SUBDIRS = aesd-char-driver

define AESDCHAR_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
