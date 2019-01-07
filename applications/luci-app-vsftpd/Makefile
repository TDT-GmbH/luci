#
# Copyright (C) 2018 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=vsftpd Configuration
LUCI_DEPENDS:=+vsftpd
LUCI_PKGARCH:=all

PKG_LICENSE:=Apache-2.0
PKG_MAINTAINER:=Florian Eckert <fe@dev.tdt.de>

LUA_TARGET:=source

include ../../luci.mk

# call BuildPackage - OpenWrt buildroot signature
