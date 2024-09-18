define bind-libs_append
        DEPENDS+=+libexecinfo
endef

Package/bind-libs += $(newline)$(bind-libs_append)
