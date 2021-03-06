#!/bin/sh

bhyve -c 2 -m 4G -A -H \
    -s 0,hostbridge \
    -s 1,lpc \
    -s 2,virtio-blk,${_FREEBSD_VM_IMG} \
    -l com1,stdio \
    -l bootrom,/usr/local/share/uefi-firmware/BHYVE_UEFI.fd \
    testvm
