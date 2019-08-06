#!/bin/bash
if command -v python &>/dev/null; then
    echo Python  is installed
    pyv="$(python -V 2>&1)"
    echo "Python version:
********************************************
     $pyv"
else
    echo Python  is not installed
fi
SPACE=`df -h`
KERNALV=`uname -r`
KERNELHEADER=`rpm -qa | grep -i kernel-header`
LISTENINGPORTS=`iptables -L -n`
BOOTLOADER=`grub-install --version`
echo -ne "\n"
echo "1. STORAGE DETAILS :
*********************************************
      $SPACE "
echo -ne "\n"
echo "2. KERNEL VERSION :
*********************************************
      $KERNALV "
echo -ne "\n"
echo "3. KERNEL HEADER VERSIONS :
*********************************************
      $KERNELHEADER "
echo -ne "\n"
echo "4. LISTENING PORTS :
*********************************************
      $LISTENINGPORTS "
echo -ne "\n"
echo "5. BOOT LOADER :
*********************************************
      $BOOTLOADER "
echo -ne "\n"
