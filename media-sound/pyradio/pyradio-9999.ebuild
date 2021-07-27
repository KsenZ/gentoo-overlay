# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_{4,5,6,7} )
inherit distutils-r1 git-r3

DESCRIPTION="Command line internet radio player"
HOMEPAGE="http://www.coderholic.com/pyradio"
EGIT_REPO_URI="https://github.com/coderholic/pyradio.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="+mpv mplayer vlc"

RDEPEND="mpv? ( media-video/mpv net-misc/socat )
mplayer? ( media-video/mplayer )
vlc? ( media-video/vlc )"

