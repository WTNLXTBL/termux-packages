TERMUX_PKG_HOMEPAGE="https://github.com/tbeu/matio"
TERMUX_PKG_DESCRIPTION="A C library for reading and writing Matlab MAT files"
TERMUX_PKG_GROUPS="science"
TERMUX_PKG_LICENSE="BSD 2-Clause"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.5.23"
TERMUX_PKG_SRCURL="https://github.com/tbeu/matio/archive/refs/tags/v$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=5f25c53e698d06b3119e3a4d0536e1da89983dbb7b0a845270663be02ec95978
TERMUX_PKG_DEPENDS="zlib"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_ENABLE_CLANG16_PORTING=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DMATIO_WITH_HDF5:BOOL=OFF
-DMATIO_MAT73:BOOL=OFF
-DHDF5_USE_STATIC_LIBRARIES:BOOL=OFF
-DMATIO_SHARED:BOOL=ON
"
