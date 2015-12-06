#!/bin/sh

# ----------------------------------------------------------------------------------------------------------------------
# Makefile for nginx SysVinit script.
#
# @author Richard Fussenegger <fleshgrinder@users.noreply.github.com>
# @copyright 2013-15 Richard Fussenegger
# @license http://unlicense.org/ PD
# ----------------------------------------------------------------------------------------------------------------------

SHELL = /bin/sh
.SUFFIXES:

DAEMON  := nginx
INIT    := /etc/init.d/$(DAEMON)
DEFAULT := /etc/default/$(DAEMON)

install:
	install -D --mode=0644 --owner=root --group=root -- ./defaults $(DEFAULT)
	install -D --mode=0755 --owner=root --group=root -- ./init $(INIT)
	update-rc.d $(DAEMON) defaults

uninstall:
	update-rc.d -f $(DAEMON) remove
	rm --force -- $(INIT) $(DEFAULT)
