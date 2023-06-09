TERMUX_PKG_HOMEPAGE=https://www.blosc.org
TERMUX_PKG_DESCRIPTION="A blocking, shuffling and loss-less compression library"
TERMUX_PKG_LICENSE="BSD"
TERMUX_PKG_LICENSE_FILE="\
LICENSES/BITSHUFFLE.txt
LICENSES/BLOSC.txt
LICENSES/FASTLZ.txt
LICENSES/LZ4.txt
LICENSES/SNAPPY.txt
LICENSES/STDINT.txt
LICENSES/ZLIB.txt"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.21.3
TERMUX_PKG_SRCURL=https://github.com/Blosc/c-blosc/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=941016c4564bca662080bb01aea74f06630bd665e598c6f6967fd91b2e2e0bb6
TERMUX_PKG_DEPENDS="liblz4, libsnappy, zlib, zstd"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DDEACTIVATE_LZ4=OFF
-DDEACTIVATE_SNAPPY=OFF
-DDEACTIVATE_ZLIB=OFF
-DDEACTIVATE_ZSTD=OFF
-DPREFER_EXTERNAL_LZ4=ON
-DPREFER_EXTERNAL_ZLIB=ON
-DPREFER_EXTERNAL_ZSTD=ON
"
