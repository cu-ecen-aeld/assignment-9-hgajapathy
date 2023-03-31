##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################
AESD_ASSIGNMENTS_VERSION = '176ac66ac4f1b875cde259333b92a29df3a9d269'
AESD_ASSIGNMENTS_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-hgajapathy.git'
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

# for local build
# AESD_ASSIGNMENTS_SITE = '/home/haga9942/assignments-3-and-later'
# AESD_ASSIGNMENTS_SITE_METHOD = local
# AESD_ASSIGNMENTS_MODULE_SUBDIRS = server

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket-start-stop $(TARGET_DIR)/etc/init.d/S99aesdsocket
endef

$(eval $(generic-package))
