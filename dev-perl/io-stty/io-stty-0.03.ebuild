# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MY_PN=IO-Stty
MODULE_AUTHOR=TODDR
MODULE_VERSION=0.03
inherit perl-module

DESCRIPTION="Change and print terminal line settings"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lang/perl"

DEPEND="${RDEPEND}
    >=virtual/perl-Module-Build-0.35"

SRC_TEST="do"