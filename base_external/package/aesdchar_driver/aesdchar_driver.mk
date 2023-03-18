##############################################################
#
# AESDCHAR_DRIVER
#
##############################################################
AESDCHAR_DRIVER_VERSION = 'f170516efd872c7f5aa47b5bfc3f22e64a8232fc'
AESDCHAR_DRIVER_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-hgajapathy.git'
AESDCHAR_DRIVER_SITE_METHOD = git
AESDCHAR_DRIVER_GIT_SUBMODULES = YES

AESDCHAR_DRIVER_MODULE_SUBDIRS = aesd-char-driver

define AESDCHAR_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
