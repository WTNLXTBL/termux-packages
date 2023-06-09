TERMUX_PKG_HOMEPAGE=https://wiki.gnome.org/Accessibility
TERMUX_PKG_DESCRIPTION="A python client library for the AT-SPI D-Bus accessibility infrastructure"
TERMUX_PKG_LICENSE="LGPL-2.0, GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
_MAJOR_VERSION=2.46
TERMUX_PKG_VERSION=${_MAJOR_VERSION}.0
TERMUX_PKG_SRCURL=https://download.gnome.org/sources/pyatspi/${_MAJOR_VERSION}/pyatspi-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=d45489cf3d47aa150b1a35e8949b3b31035f8c2075e588d26b6efc625970c62e
TERMUX_PKG_DEPENDS="at-spi2-core, dbus, dbus-python, pygobject, python"
TERMUX_PKG_SETUP_PYTHON=true
TERMUX_PKG_PLATFORM_INDEPENDENT=true
