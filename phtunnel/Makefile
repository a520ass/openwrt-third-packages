#
# Copyright (C) 2007-2012 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=phtunnel
PKG_VERSION:=1.0.0
PKG_RELEASE:=2
FILES_PATH:=files

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=Web Servers/Proxies
  TITLE:=phtunnel
  DEPENDS:=+librt +libpthread +libc +wget @!PACKAGE_phddns
endef

define Package/$(PKG_NAME)/description
PHTunnel
endef

define Package/$(PKG_NAME)/conffiles
/etc/phtunnel.json
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
	true
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_DIR) $(1)/etc/hotplug.d/iface

	$(INSTALL_BIN) $(FILES_PATH)/usr/bin/phtunnel $(1)/usr/bin
	$(INSTALL_BIN) $(FILES_PATH)/etc/init.d/phtunnel $(1)/etc/init.d
	$(INSTALL_BIN) $(FILES_PATH)/etc/config/phtunnel $(1)/etc/config
	$(INSTALL_BIN) $(FILES_PATH)/etc/hotplug.d/iface/30-oray-phtunnel $(1)/etc/hotplug.d/iface
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
