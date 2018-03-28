#!/bin/bash
cd bochs || exit 1
./configure --prefix=/usr --enable-x86-64 --enable-smp --enable-cpu-level=6 --enable-long-phy-address --enable-large-ramfile --enable-configurable-msrs --enable-debugger --enable-disasm --enable-debugger-gui --enable-all-optimizations --enable-readline --enable-fpu --enable-vmx=2 --enable-svm --enable-alignment-check --enable-monitor-mwait --enable-perfmon --enable-memtype --enable-avx --enable-evex --enable-pci --enable-usb --enable-usb-ohci --enable-usb-ehci --enable-usb-xhci --enable-ne2000 --enable-pnic --enable-e1000 --enable-clgd54xx --enable-voodoo --enable-cdrom --enable-sb16 --enable-es1370 --enable-gameport --enable-busmouse || exit 1
make -j5 || exit 1

