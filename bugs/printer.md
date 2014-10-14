My little HP p1102w will sometimes not print, giving the error message "filter
failed", or something of the like.

The solution on Gentoo (as root)

    emerge net-print/hplip
    layman -a rion
    emerge net-print/hplip-plugin
    /etc/init.d/cupsd restart

Also, remember to run `eix-update` after adding a new overlay.

The solution on Arch

    pacman -S hplip
    yaourt -S hplip-plugin
    systemctl restart cupsd

Then configure the printer the normal way through `http://localhost:631`


