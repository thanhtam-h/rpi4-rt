sudo rm /boot/*4.19.58-rt*
sudo dpkg -i linux-image*
sudo dpkg -i linux-headers*
tar -xjvf linux-dts-4.19.*.tar.bz2
cd dts
sudo cp -rf * /boot/
sudo mv /boot/vmlinuz-4.19.58-rt22-v7l+ /boot/kernel7l.img
sudo ldconfig
sudo reboot
