TERMUX_SUBPKG_DESCRIPTION="Wheels for Python ensurepip"
TERMUX_SUBPKG_PLATFORM_INDEPENDENT=true
TERMUX_SUBPKG_INCLUDE="
lib/python${_MAJOR_VERSION}/ensurepip/_bundled/
"
TERMUX_SUBPKG_BREAKS="python (<< 3.11.1-3)"
TERMUX_SUBPKG_REPLACES="python (<< 3.11.1-3)"
