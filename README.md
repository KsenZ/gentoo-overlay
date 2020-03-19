My Gentoo overlay
==============

### Install overlay ###

> \# layman -o 'https://raw.githubusercontent.com/KsenZ/gentoo-overlay/master/Documentation/layman/ksenz.xml' -f -k -a ksenz

### Keywords, USE flags and mask packages for [Ásbrú Connection Manager] (https://www.asbru-cm.net/) ###

> \# ln -s /var/lib/layman/ksenz/Documentation/package.mask/asbru-cm /etc/portage/package.mask/asbru-cm

> \# ln -s /var/lib/layman/ksenz/Documentation/package.use/asbru-cm /etc/portage/package.use/asbru-cm

> \# ln -s /var/lib/layman/ksenz/Documentation/package.keywords/asbru-cm /etc/portage/package.keywords/asbru-cm

### Keywords and USE flags for Komodo Edit

> \# ln -s /var/lib/layman/ksenz/Documentation/package.keywords/komodo-edit-bin /etc/portage/package.keywords/komodo-edit-bin

> \# ln -s /var/lib/layman/ksenz/Documentation/package.use/komodo-edit-bin /etc/portage/package.use/komodo-edit-bin