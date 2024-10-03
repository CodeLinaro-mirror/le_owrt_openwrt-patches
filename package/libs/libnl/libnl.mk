define libnl_dev_append
	mkdir -p $(1)/usr/include/libnl
	$(CP) $(PKG_BUILD_DIR)/include/* $(1)/usr/include/libnl/
endef

Build/InstallDev += $(newline)$(libnl_dev_append)
