#
# Copyright (C) 2007-2012 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
#
include $(TOPDIR)/rules.mk

PKG_SOURCE_URL:=https://github.com/meyerd/n2n
PKG_SOURCE_VERSION:=e4d8c144d68cff0176c342b801cefe69b453c076

PKG_NAME:=n2n_v2s
PKG_VERSION:=2.1-$(PKG_SOURCE_VERSION)
PKG_RELEASE:=1
PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE

PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE:=$(PKG_SOURCE_SUBDIR).tar.gz
PKG_SOURCE_PROTO:=git

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/n2n_v2s
  SECTION:=net
  CATEGORY:=Network
  TITLE:=N2N VPN tunneling daemon(V2s)
  URL:=https://github.com/meyerd/n2n
  SUBMENU:=VPN
  DEPENDS:=+kmod-tun +resolveip +libopenssl
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	$(CP) $(PKG_BUILD_DIR)/n2n_v2/* $(PKG_BUILD_DIR)
endef

define Package/n2n_v2s/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/edge $(1)/usr/sbin/
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/supernode $(1)/usr/sbin/
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_DATA) ./files/n2n_v2.config $(1)/etc/config/n2n_v2
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/n2n_v2.init $(1)/etc/init.d/n2n_v2
	$(INSTALL_DIR) $(1)/usr/share/n2n_v2
	$(INSTALL_BIN) ./files/n2n_v2.watchdog $(1)/usr/share/n2n_v2/n2n_v2-watchdog
	$(INSTALL_BIN) ./files/n2n_v2.check $(1)/usr/share/n2n_v2/n2n_v2-check
endef

$(eval $(call BuildPackage,n2n_v2s))
