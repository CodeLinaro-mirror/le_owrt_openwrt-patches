define Package/iptables-zz-legacy/install
	$(INSTALL_DIR) $(1)/usr/lib/iptables
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/iptables/libxt_u32.so $(1)/usr/lib/iptables
endef
