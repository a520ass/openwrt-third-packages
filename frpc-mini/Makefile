#
# Copyright (C) 2007-2012 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=frpc-mini
PKG_VERSION:=0.27.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=Web Servers/Proxies
  TITLE:=frpc-mini - fast reverse proxy client
  URL:=https://github.com/fatedier/frp
endef

define Package/$(PKG_NAME)/description
frpc-mini - fast reverse proxy client
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/etc/config/frpc-mini
	$(INSTALL_DATA) ./files/frpc.ini $(1)/etc/config/frpc-mini/frpc.ini
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/frpc-mini $(1)/etc/init.d/frpc-mini
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
