# Firejail profile for gnome-books
# This file is overwritten after every install/update
# Persistent local customizations
include gnome-books.local
# Persistent global definitions
include globals.local

# when gjs apps are started via gnome-shell, firejail is not applied because systemd will start them

noblacklist ${HOME}/.cache/org.gnome.Books
noblacklist ${DOCUMENTS}

# Allow gjs (blacklisted by disable-interpreters.inc)
include allow-gjs.inc

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

caps.drop all
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none
tracelog

# private-bin gjs,gnome-books
private-dev
private-tmp

