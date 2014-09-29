My Gentoo overlay
==============

###Install overlay###

> \# layman -o 'https://raw.githubusercontent.com/KsenZ/gentoo-overlay/master/Documentation/layman/ksenz.xml' -f -k -a ksenz

###Keywords, USE flags and mask packages for [PAC manager] (https://sites.google.com/site/davidtv/)###

> \# ln -s /var/lib/layman/ksenz/Documentation/package.mask/pacmanager /etc/portage/package.mask/pacmanager

> \# ln -s /var/lib/layman/ksenz/Documentation/package.use/pacmanager /etc/portage/package.use/pacmanager

> \# ln -s /var/lib/layman/ksenz/Documentation/package.keywords/pacmanager /etc/portage/package.keywords/pacmanager

###Keywords for Insync

> \# ln -s /var/lib/layman/ksenz/Documentation/package.keywords/insync /etc/portage/package.keywords/insync

###Keywords for Komodo Edit

> \# ln -s /var/lib/layman/ksenz/Documentation/package.keywords/komodo-edit-bin /etc/portage/package.keywords/komodo-edit-bin