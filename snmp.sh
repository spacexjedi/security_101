apt-get install snmpd
 netstat -a --udp -np | grep snmpd(pra ver se o snmpd está rodando)
 cp /etc/snmpd/snmpd.conf /etc/snmp/snmpd.conf.def
 vi /etc/snmp/snmpd.conf
 /etc/init.d/snmpd restart
 apt-get install snmp
 snmpget -v 2c -c public 182.168.56.101 SNMPv2::sysUpTime.0
 snmpwalk -0s -c public -v 1 127.0.0.1
