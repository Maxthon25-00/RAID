mkdir -p ~root/.ssh
cp ~vagrant/.ssh/auth* ~root/.ssh
yum install -y mdadm smartmontools hdparm gdisk
lsblk
sleep 5
sudo mdadm --create --verbose /dev/md0 -l 5 -n 5 /dev/sd{b,c,d,e,f}
sudo mdadm -D /dev/md0
touch mdadm.conf
echo "DEVICE partitions" > mdadm.conf
sudo mdadm --detail --scan --verbose | awk '/ARRAY/ {print}' >> mdadm.conf
mkdir -p /etc/mdadm
mv mdadm.conf /etc/mdadm
sudo chown root:root /etc/mdadm/mdadm.conf
echo "------------mdadm.conf file has been created--------------------------"
echo "------------------THE WORK COMPLETE SUCCESSFULLY--------------------------"
sudo shutdown -r now