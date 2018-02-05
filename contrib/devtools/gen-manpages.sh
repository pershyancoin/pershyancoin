#!/bin/bash

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

PERSHYANCOIND=${PERSHYANCOIND:-$SRCDIR/pershyancoind}
PERSHYANCOINCLI=${PERSHYANCOINCLI:-$SRCDIR/pershyancoin-cli}
PERSHYANCOINTX=${PERSHYANCOINTX:-$SRCDIR/pershyancoin-tx}
PERSHYANCOINQT=${PERSHYANCOINQT:-$SRCDIR/qt/pershyancoin-qt}

[ ! -x $PERSHYANCOIND ] && echo "$PERSHYANCOIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
PSCVER=($($PERSHYANCOINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for pershyancoind if --version-string is not set,
# but has different outcomes for pershyancoin-qt and pershyancoin-cli.
echo "[COPYRIGHT]" > footer.h2m
$PERSHYANCOIND --version | sed -n '1!p' >> footer.h2m

for cmd in $PERSHYANCOIND $PERSHYANCOINCLI $PERSHYANCOINTX $PERSHYANCOINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${PSCVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${PSCVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
