# TestNvidiaInstallForLinux

## Prepare
As root open the /etc/apt/sources.list and add the non-free repository. For example change the repository definition:

    FROM:
    deb http://ftp.au.debian.org/debian/ buster main
    TO:
    deb-src http://ftp.au.debian.org/debian/ buster main non-free

Now update the repository

    # apt update

## Download this

Login as root

    # curl -L https://github.com/Tirsvad/Linux-Debian-NvidiaDriver/tarball/master | tar xz -C /root/ --strip-components 2


## Install

Disable the GUI

    # systemctl set-default multi-user.target
    # reboot

Login as root

    # cd ~/NvidiaDriver
    # bash install\ nvidia\ driver.sh

bash nvidiaInstall/install\ nvidia\ driver.sh
