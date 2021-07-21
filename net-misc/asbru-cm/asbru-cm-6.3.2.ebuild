# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit bash-completion-r1 eutils gnome2 multilib

DESCRIPTION="Asbru CM is a user interface that helps organizing remote terminal sessions"
HOMEPAGE="https://www.asbru-cm.net/"
SRC_URI="https://github.com/${PN}/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="uucp rdesktop freerdp mosh tigervnc"

RDEPEND="uucp? ( net-misc/taylor-uucp )
	rdesktop? ( net-misc/rdesktop )
	freerdp? ( net-misc/freerdp )
	mosh? ( net-misc/mosh )
	tigervnc? ( net-misc/tigervnc )
	dev-libs/ossp-uuid[perl]
	x11-libs/libwnck
	x11-libs/vte
	dev-perl/Cairo
	dev-perl/glib-perl
	dev-perl/Pango
	dev-perl/Socket6
	dev-perl/Expect
	dev-perl/YAML
	dev-perl/Crypt-CBC
	dev-perl/Crypt-Blowfish
	dev-perl/Gtk3
	dev-perl/Net-ARP
	net-misc/openssh
	dev-perl/Crypt-Rijndael
	dev-perl/XML-Parser
	media-libs/libcanberra
	dev-perl/Gtk3-SimpleList
	x11-libs/libwnck
	dev-perl/IO-Stty
	dev-perl/IO-Tty"
DEPEND="${RDEPEND}"

src_prepare() {
	find lib utils -type f | while read f
	do
#		sed -i -e "s@\$RealBin[^']*\('\?\)\([./]*\)/lib@\1/usr/$(get_libdir)/${PN}@g" "${f}"
#		sed -i -e "s@\$RealBin[^']*\('\?\)\([./]*\)/res@\1/usr/share/${PN}@g" "${f}"
		sed -i -e "s@use KeePass@use File::KeePass@g" "${f}"
	done

	eapply_user
}

src_configure() { :; }

src_install() {
	rm lib/ex/KeePass.pm

	doman "res/${PN}.1"
	rm "res/${PN}.1"

	insinto /usr/share/applications
	doins "res/${PN}.desktop"
	rm "res/${PN}.desktop"

	newicon -s scalable res/asbru-logo.svg "${PN}".svg
	newicon -s 24 res/asbru-logo-24.png "${PN}".png
	newicon -s 256 res/asbru-logo-24.png "${PN}".png
	newicon -s 64 res/asbru-logo-24.png "${PN}".png

	newbashcomp res/asbru_bash_completion "${PN}"
	rm res/asbru_bash_completion

	insinto "/opt/${PN}"
	doins -r lib res utils ${PN}

	fperms 755 /opt/${PN}/${PN}
	dosym /opt/${PN}/${PN} /usr/bin/${PN}
}

pkg_postinst() {
	sed -e '1742,1753s/^/#/' -i /usr/lib64/perl5/vendor_perl/5.34/Gtk3.pm
	gnome2_icon_cache_update
}

pkg_postrm() {
	gnome2_icon_cache_update
}
