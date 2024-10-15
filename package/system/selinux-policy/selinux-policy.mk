LOCAL_SRC:=$(TOPDIR)/owrt-qti-sepolicy

define Build/Configure_append
	mkdir -p $(PKG_BUILD_DIR)/src/qti
	$(CP) $(LOCAL_SRC)/cil/file/execfile/*.cil $(PKG_BUILD_DIR)/src/
	$(CP) $(LOCAL_SRC)/cil/dev/nodedev/*.cil   $(PKG_BUILD_DIR)/src/
	$(CP) $(LOCAL_SRC)/cil/file/execfile/test/*.cil $(PKG_BUILD_DIR)/src/
endef

Build/Configure += $(newline)$(Build/Configure_append)

define Package/selinux-policy/install_append
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_DIR) $(1)/lib/preinit
	$(INSTALL_BIN) $(LOCAL_SRC)/files/selinux-labeldev.sh $(1)/lib/preinit/99_10_labeldev
endef

Package/selinux-policy/install += $(newline)$(Package/selinux-policy/install_append)
