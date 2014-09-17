My Gentoo overlay
==============

##Install##

> \# layman -o 'https://raw.githubusercontent.com/KsenZ/gentoo-overlay/master/Documentation/layman/ksenz.xml' -f -k -a ksenz

##[For PAC manager] (https://sites.google.com/site/davidtv/)##

> \# ln -s /var/lib/layman/ksenz/Documentation/package.mask/pacmanager /etc/portage/package.mask/pacmanager

> \# ln -s /var/lib/layman/ksenz/Documentation/package.use/pacmanager /etc/portage/package.use/pacmanager

> \# ln -s /var/lib/layman/ksenz/Documentation/package.keywords/pacmanager /etc/portage/package.keywords/pacmanager
