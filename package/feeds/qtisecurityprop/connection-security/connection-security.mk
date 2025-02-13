define Package/connection-security
	SECTION:=QTI
	CATEGORY:=QTI Proprietary software
	TITLE:=QTI Connection Security application
	DEPENDS:= +libcutils +qmi +qmi-framework +glib2 +libutils +common \
		    +diag +configdb +dsutils +time-genoff +xmllib +minkipc +securemsm-noship +libsqlite3 +libpcre2
endef

define Package/connection-security_prebuilt
	SECTION:=QTI
	CATEGORY:=QTI Proprietary software
	TITLE:=QTI Connection Security application
	DEPENDS:= +libcutils +qmi +qmi-framework +glib2 +libutils +common \
		    +diag +configdb +dsutils +time-genoff +xmllib +minkipc +securemsm-noship +libsqlite3 +libpcre2
endef
