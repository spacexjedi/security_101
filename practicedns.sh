apt-get install bind9 

netstat -a --udp -np # filtro pelo nome do processo

/etc/init.d/bind start #restart

/etc/init.d/bind/named.conf.local # entrar e adicionar host

vi /etc/bind/db.tocadocastor.info #configura os toca do castor

named-checkzone 56.168.192.in-addr.arpa /etc/bind/db.56.168.192 #funciona








