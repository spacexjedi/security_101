#habilitar um roteador

#maquina virtual  add gateway

route add default gw 192.168.56.1 

#maquina real  habilita como gateway

echo 1 > /proc/sys/net/ipv4/ip_forward 

#mascarar nessa placa de rede

iptables -t nat -A POSTROUTING -o enp63s0 -j MASQUERADE 

#habilitar dns #máquina virtual

echo "nameserver 8.8.8.8" > /etc/resolv.conf 


#COMANDOS DA APS: CONFIGURAÇÃO DE FIREWALL

# 8 - os coisos ~ o firewall pode ser cliente

iptables -A INPUT -p tcp --sport 80 -j 	ACCEPT
iptables -A INPUT -p tcp --sport 443 -j ACCEPT
iptables -A INPUT -p tcp --sport 22 -j ACCEPT
iptables -A INPUT -p tcp --sport 53 -j ACCEPT
iptables -A INPUT -p tcp --sport 21 -j ACCEPT



# 1 - Mascarando 

iptables -t nat -A POSTROUTING -o enp63s0 -j MASQUERADE


# 2 - Redirecionar pacotes da rede externa para porta 81

iptables -t nat -A PREROUTING  -i enp63s0 -p tcp --dport 80 -j DNAT --to 192.168.56.102:81
 

# 5 - Proibir uso de SSH e Telnet

iptables -A FORWARD -p tcp --dport 23 -j DROP

iptables -A FORWARD -p tcp --dport 22 -j DROP


# 7 - Bloquando ping

iptables  -A INPUT -p icmp --icmp-type echo-request -m limit --limit 1 -j ACCEPT

# 4 - POLÍTICA	

iptables -P INPUT DROP

# 6 - Deve ser controlado por MAC

iptables -A INPUT -p tcp --dport 22 -i vboxnet0 -m mac --mac-source 08:00:27:71:56:86 -j ACCEPT


# 9 - servidor

iptables -A INPUT -p tcp --dport 80 -d 192.168.56.102 -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i enp63s0 -p tcp -m state --state NEW,INVALID -j DROP


# 3  - DNS

/etc/init.d/bind start 

iptables -t nat -A  REDIRECT