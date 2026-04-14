LVM_DIR:=$(dir $(abspath $(lastword $(MAKEFILE_LIST))))

define install_append
	$(RM) $(1)/etc/hotplug.d/block/20-lvm2
	$(INSTALL_DIR) $(1)/etc/lvm
	$(CP) $(LVM_DIR)/files/lvm.conf $(1)/etc/lvm/lvm.conf
endef

override define Package/lvm2-selinux/install
	$(call Package/lvm2/install,$(1))
	$(call install_append,$(1))
endef

