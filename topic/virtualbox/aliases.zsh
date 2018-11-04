#!/usr/bin/env sh

vbox() {
  case "$1" in
    unload)
      echo "Unloading VirtualBox Kexts"
      for id in VBoxNetAdp VBoxNetFlt VBoxUSB VBoxDrv; do
        kextunload -b "org.virtualbox.kext.$id"
      done
    ;;
    load) 
      echo "Loading VirtualBox Kexts"
      for id in VBoxDrv VBoxUSB VBoxNetFlt VBoxNetAdp; do
          kextload -r "/Library/Application Support/VirtualBox" "/Library/Application Support/VirtualBox/$id.kext"
      done
    ;;
    *)
      echo "Unknown option. Only 'load' & 'unload' allowed"
    ;;
  esac
}
