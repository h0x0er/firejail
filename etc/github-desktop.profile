# Firejail profile for github-desktop
# Description: Extend your GitHub workflow beyond your browser with GitHub Desktop
# This file is overwritten after every install/update
# Persistent local customizations
include github-desktop.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.gitconfig
noblacklist ${HOME}/.config/GitHub Desktop

include disable-common.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-devel.inc
include disable-interpreters.inc

caps.drop all
netfilter
# no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,inet6,netlink
seccomp

# Note: On debian-based distributions the binary might be located in
# /opt/GitHub Desktop/github-desktop, and therefore not be in PATH.
# If that's the case you can start GitHub Desktop with firejail via
# `firejail "/opt/GitHub Desktop/github-desktop"`.

disable-mnt
# private-bin github-desktop
private-cache
private-dev
?HAS_APPIMAGE: ignore private-dev
# private-etc none
# private-lib
private-tmp

# memory-deny-write-execute
noexec ${HOME}
noexec /tmp
