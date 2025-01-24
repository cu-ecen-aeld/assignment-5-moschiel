##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
#COMMIT VERSION NUMBER
AESD_ASSIGNMENTS_VERSION = c4a11f024bfbe04c152201f74bcbfd7d2a68663f
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
#GITHUB REPOSITORY LINK
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-moschiel.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/finder-app all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
# @D is external repository directory,  TARGET_DIR is the rootfs directory (staging) that will be built for the target
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(@D)/conf/ $(TARGET_DIR)/etc/finder-app/conf/
	$(INSTALL) -m 0755 $(@D)/conf/* $(TARGET_DIR)/etc/finder-app/conf/
	$(INSTALL) -m 0755 $(@D)/finder-app/writer $(TARGET_DIR)/bin/
	$(INSTALL) -m 0755 $(@D)/finder-app/finder.sh $(TARGET_DIR)/bin/
	$(INSTALL) -m 0755 $(@D)/finder-app/finder-test.sh $(TARGET_DIR)/bin/
endef

$(eval $(generic-package))
