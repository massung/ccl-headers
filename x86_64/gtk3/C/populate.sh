#!/bin/sh
h-to-ffi.sh `pkg-config --cflags gtk+-3.0` -m64 /usr/include/gtk-3.0/gtk/gtk.h
