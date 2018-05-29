# Fresh firmware setup
echo "did you install DNSmasq yet?"
sleep 1
echo "did you install Evil Portal from module manager?"
sleep 1
echo "are you sure your ready for this?"
sleep 6
START=/root/PAStart

opkg update
opkg install screen

opkg install $START/aircrack-ng_1.2-rc5-6_ar71xx.ipk --force-overwrite
opkg install $START/kismet_28.05.2018-0_ar71xx.ipk

cp -r $START/manuf /etc/
cp -r $START/EvilPortal /pineapple/modules
cp -r $START/google-login /root/portals

cp -r $START/DNSMasq.log /pineapple/modules/DNSMasqSpoof/hosts/dnsmasq.hosts

exit 0

