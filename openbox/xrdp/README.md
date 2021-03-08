Ultimate configuration of X-rdp!

### How to install
1. Install openbox and xrdp from repository. Optional, install XFCE if you don't want to using Openbox.
2. Copy `.xsession` in `~/` Change to `xfce4-session` if you want to using XFCE4.
3. Backup `xrdp.ini` in `/etc/xrdp/` and delete 2 line at the very-very bottom of the config that contains:
```
test -x /etc/X11/Xsession && exec /etc/X11/Xsession
exec /bin/sh /etc/X11/Xsession
```
4. Change that line to `exec openbox-session` or `exec startxfce4`.
5. Proceed to Maintenance & Start section.
6. Connect to rdp using `<ip>:3390`.

### Maintenance & Start
```bash
# Enable dbus
sudo systemctl enable dbus
sudo /etc/init.d/dbus start
sudo /etc/init.d/xrdp start

# Restart instance xrdp
sudo service xrdp restart
sudo /etc/init.d/xrdp status
```

### Dependency for XFCE DE
```
xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils
```

