sudo apt-get update -ysudo apt-get upgrade -y

sudo apt-get install libpcre3-dbg libpcre3-dev autoconf automake libtool libpcap-dev libnet1-dev libyaml-dev zlib1g-dev libcap-ng-dev libmagic-dev libjansson-dev libjansson4

sudo apt-get install libnetfilter-queue-dev libnetfilter-queue1 libnfnetlink-dev

wget https://www.openinfosecfoundation.org/download/suricata-3.1.2.tar.gz

tar -xvf suricata-3.1.2.tar.gz

cd suricata-3.1.2 ls

sudo ./configure --enable-nfqueue --prefix=/usr --sysconfdir=/etc --localstatedir=/var

sudo make

sudo make install

sudo make install-conf

sudo make install-rules

cd /etc/suricata/rules ls

sudo nano /etc/suricata/suricata.yaml

sudo ethtool -K eth0 gro off lro off

sudo /usr/bin/suricata --list-runmodes

sudo /usr/bin/suricata -c /etc/suricata/suricata.yaml -i eth0 --init-errors-fatal

