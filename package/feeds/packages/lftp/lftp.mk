define lftp_configure_args_append
CONFIGURE_ARGS += --with-expat="$(STAGING_DIR)/usr"
endef

$(eval $(lftp_configure_args_append))
