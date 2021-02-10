# If libQt5gui doesn't work, execute this command as su
sudo apt-get install libqt5gui5
strip --remove-section=.note.ABI-tag /usr/lib/x86_64-linux-gnu/libQt5Core.so.5

