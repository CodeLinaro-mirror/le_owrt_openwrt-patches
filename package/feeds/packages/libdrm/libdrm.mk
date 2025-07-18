define Package/$(PKG_NAME)/install_append
	$(INSTALL_DIR) $(1)/data
	$(CP) $(PKG_INSTALL_DIR)/../openwrt-build/tests/modetest $(1)/data/
endef

Package/$(PKG_NAME)/install += $(newline)$(Package/$(PKG_NAME)/install_append)
