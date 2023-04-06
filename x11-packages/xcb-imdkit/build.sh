TERMUX_PKG_HOMEPAGE=https://github.com/fcitx/xcb-imdkit
TERMUX_PKG_DESCRIPTION="An implementation of xim protocol in xcb"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.0.5
TERMUX_PKG_SRCURL=https://github.com/fcitx/xcb-imdkit/archive/refs/tags/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=3e3cdb272c84805d75ab233d757908278fe649d63a4f998ab116a74c57795e93
TERMUX_PKG_DEPENDS="libxcb, xcb-util"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, uthash, xcb-util-keysyms"
