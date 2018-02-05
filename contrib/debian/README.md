
Debian
====================
This directory contains files used to package pershyancoind/pershyancoin-qt
for Debian-based Linux systems. If you compile pershyancoind/pershyancoin-qt yourself, there are some useful files here.

## pershyancoin: URI support ##


pershyancoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install pershyancoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your pershyancoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/pershyancoin128.png` to `/usr/share/pixmaps`

pershyancoin-qt.protocol (KDE)

