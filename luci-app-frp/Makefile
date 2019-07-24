#
# Copyright (C) 2010-2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=luci-app-frp
LUCI_DEPENDS:=+wget +luci-lib-ipkg
LUCI_PKGARCH:=all
PKG_VERSION:=1
PKG_RELEASE:=8

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
