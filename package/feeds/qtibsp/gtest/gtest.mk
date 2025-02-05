PKG_SOURCE_URL=https://github.com/google/googletest.git/
PKG_SOURCE_VERSION:=release-1.8.0
PKG_MIRROR_HASH:=78e83d14d464803446f06f799a96b02aea0e17a69940a8a5bf64c8240aeb758a

MAKE_PATH:=$(TOPDIR)/owrt-qti-bsp/test-packages/gtest
REMOVE_PATCH_FILES := $(RM) -rf $(MAKE_PATH)/patches/

define Build/Prepare
	$(REMOVE_PATCH_FILES)
	$(call Build/Prepare/Default)
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libgtest.so $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libgtest_main.so $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libgmock.so $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libgmock_main.so $(1)/usr/lib/
endef

#Build/InstallDev += $(newline)$(Build/InstallDev_append)

define Package/$(PKG_NAME)/install_append
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libgmock.so $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libgmock_main.so $(1)/usr/lib/
endef

Package/$(PKG_NAME)/install += $(newline)$(Package/$(PKG_NAME)/install_append)
