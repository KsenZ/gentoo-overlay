# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

MODULE_AUTHOR=XAOC
inherit perl-module

DESCRIPTION="Perl interface to the 2.x series of the Gnome Virtual File System libraries"
SRC_URI="https://cpan.metacpan.org/authors/id/X/XA/XAOC/${PN}-${PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=gnome-base/gnome-vfs-2
	>=dev-perl/glib-perl-1.120"
DEPEND="${RDEPEND}
	>=dev-perl/ExtUtils-Depends-0.2
	>=dev-perl/ExtUtils-PkgConfig-1.03
	virtual/pkgconfig"

SRC_TEST=skip
