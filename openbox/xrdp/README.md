Ultimate configuration of X-rdp!

### How to install
1. Install openbox and xrdp from repository.
2. Copy `.xsession` in `~/`.
3. Backup `xrdp.ini` in `/etc/xrdp/` and copy `xrdp.ini` from this folder to there.
4. Proceed to Maintenance & Start section.
5. Connect to rdp using `localhost:3390`.

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

