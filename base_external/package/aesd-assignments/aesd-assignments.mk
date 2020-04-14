
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_VERSION = '632cb432cf63814a87467f20345a088a53a06cfb'
AESD_ASSIGNMENTS_SITE = 'git@github.com:chwe3468/cu-ecen-5013-final-project-shared.git'
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_LDFLAGS = $(LDFLAGS_FOR_BUILD) -pthread -lrt


define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) LDFLAGS="$(AESD_ASSIGNMENTS_LDFLAGS)" sensor
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/sensor $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/Dhruva/platform_testing/gettemp.sh $(TARGET_DIR)/usr/bin
	
	$(INSTALL) -m 0755 $(@D)/Dhruva/platform_testing/sensor-start-stop.sh $(TARGET_DIR)/etc/init.d/S60sensor
endef


$(eval $(generic-package))
