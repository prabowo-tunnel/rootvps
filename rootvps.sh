#!/bin/bash
# Ganti password root
echo "Masukkan password baru untuk root:"
read -s password
# Ubah password root
echo "root:$password" | chpasswd
# Konfigurasi akses SSH
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
# Restart layanan SSH
service ssh restart
rm -rf rootvps.sh
echo "Password root telah diubah dan akses SSH telah dikonfigurasi."
exit
exit
exit

