define Package/iptables-zz-legacy/install
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/iptables/libxt_u32.so $(1)/usr/lib/iptables
endef
