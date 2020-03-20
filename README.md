My Gentoo overlay
==============

### Install overlay ###

> \# layman -o https://raw.githubusercontent.com/KsenZ/gentoo-overlay/master/repositories.xml -f -a ksenz

### Keywords, USE flags and mask packages for Ásbrú Connection Manager

> \# ln -s /var/lib/layman/ksenz/Documentation/package.mask/asbru-cm /etc/portage/package.mask/asbru-cm

> \# ln -s /var/lib/layman/ksenz/Documentation/package.use/asbru-cm /etc/portage/package.use/asbru-cm

> \# ln -s /var/lib/layman/ksenz/Documentation/package.accept_keywords/asbru-cm /etc/portage/package.accept_keywords/asbru-cm

### Keyword for Rambox

> \# ln -s /var/lib/layman/ksenz/Documentation/package.accept_keywords/rambox /etc/portage/package.accept_keywords/rambox

### Keywords and USE flags for Komodo Edit

> \# ln -s /var/lib/layman/ksenz/Documentation/package.accept_keywords/komodo-edit-bin /etc/portage/package.accept_keywords/komodo-edit-bin

> \# ln -s /var/lib/layman/ksenz/Documentation/package.use/komodo-edit-bin /etc/portage/package.use/komodo-edit-bin
