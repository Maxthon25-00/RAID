RAID_5

1. We have create 5 SATA disks.

2. Using the lsblk command, we check that the disks have been created.

3. Creating a RAID-5 using the mdadm command.

4. We check that RAID-5 is assembled correctly via cat /proc/mdstat.

5. Creating the mdadm.conf file so that the OS remembers our RAID-array.

6. Restart the OS and check that the RAID array has been created and mounted. 
