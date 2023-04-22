TERMUX_PKG_HOMEPAGE=https://pipewire.org/
TERMUX_PKG_DESCRIPTION="A server and user space API to deal with multimedia pipelines"
TERMUX_PKG_LICENSE="MIT, LGPL-2.1, LGPL-3.0, GPL-2.0"
TERMUX_PKG_LICENSE_FILE="COPYING, LICENSE"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.3.69
TERMUX_PKG_SRCURL="https://gitlab.freedesktop.org/pipewire/pipewire/-/archive/${TERMUX_PKG_VERSION}/pipewire-${TERMUX_PKG_VERSION}.tar.bz2"
TERMUX_PKG_SHA256=4a6bd63c7293ed822917f6b62fac4d2ef65923889f9aa0b9b55301601815631c
TERMUX_PKG_DEPENDS="avahi, ffmpeg, glib, libc++, liblua54, libopus, libsndfile, libwebrtc-audio-processing, lilv, ncurses, openssl, pulseaudio, readline"

# 'media-session' session-managers is disabled as it requires alsa.
# Since we are building without x11, dbus is disabled.
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dgstreamer=disabled
-Dgstreamer-device-provider=disabled
-Dtests=disabled
-Dexamples=disabled
-Dpipewire-alsa=disabled
-Dalsa=disabled
-Dpipewire-jack=disabled
-Djack=disabled
-Ddbus=disabled
-Dsession-managers=['wireplumber']
-Dffmpeg=enabled
-Dwireplumber:system-lua=true
-Dwireplumber:system-lua-version=54
"

termux_step_pre_configure() {
	CFLAGS+=" -Dindex=strchr -Drindex=strrchr"
	sed "s|@TERMUX_PKG_BUILDER_DIR@|${TERMUX_PKG_BUILDER_DIR}|g" \
		"${TERMUX_PKG_BUILDER_DIR}"/reallocarray.diff | patch -p1
}
