# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit linux-mod

COMMIT="077612c37d935edcd72fa32758aa898d68349c03"

DESCRIPTION="rtl8821AU and rtl8811AU chipset driver with firmware v5.8.2.3"
HOMEPAGE="https://github.com/morrownr/8821au"
SRC_URI="https://github.com/morrownr/8821au/archive/${COMMIT}.tar.gz -> rtl8821au-${PV}.tar.gz"

LICENSE="GPL-2"
KEYWORDS="~amd64"

DEPEND="virtual/linux-sources"

S="${WORKDIR}/8821au-${COMMIT}"

MODULE_NAMES="8821au(net/wireless)"
BUILD_TARGETS="all"
BUILD_TARGET_ARCH="${ARCH}"

pkg_setup() {
	linux-mod_pkg_setup
	BUILD_PARAMS="KERN_DIR=${KV_DIR} ARCH=x86_64 KSRC=${KV_DIR} KERN_VER=${KV_FULL} O=${KV_OUT_DIR} V=1 KBUILD_VERBOSE=1"
}

src_compile(){
	linux-mod_src_compile
}

src_install() {
	linux-mod_src_install
}

pkg_postinst() {
	linux-mod_pkg_postinst
}

