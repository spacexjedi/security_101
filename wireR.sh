> enable

'#' configure terminal

show mac address-table

(config-if) interface FA0/1


#define mac estatico
(config-if) switchport move access

switchport port-security # no switchport port-security is to make mac dinamic

ctrl z

copy running-config startup-config

# ligar os módulos físicos
enable
configure terminal
int f0/0  # ou /1
no shutdown
crlt z
copy run startup

# entrar novamente
# adicionar o IP
int f0/0
ip address  192.168.0.5 255.255.255.252

#entrar  novamente
#configurar RIP
router rip
version 2
#adcionar todas as redes que precisam ser divulgadas
network 192.168.0.4

#mostrar rota final

show ip route

#EGRP

router eigrp 51

network 192... coringa


int s0/0/0

encapsulation hdlc

clock rate 4000000

configure terminal

interface f1/0

ip address 192.168.0.1 255.255.255.0

no shutdown

#ospf

(config)#router ospf NúmeroProcesso

(config-router)#network IPRede MáscaraCuringa area SistemaAutonômo

(config-router)#passive-interface IdentificaçãoInterface


#configuração BGP

router bgp 10

bgp router-id 1.1.1.1

neighbor 10.0.0.2 remote-as 20

network 172.16.0.0 mask 255.255.255.0

end
#vlan
#2950
enable

configure terminal

int fa0/1


vlan 2

name redea

interface fa0/1

switchport mode access

switchport access vlan 2

exit

interface fa0/2

switchport mode access

switchport access vlan 2

exit

interface range fa0/3-4 #configura todas as portas de uma vez

switchport mode access 

switchport access vlan 3

name redeb

show vlan 


# link trunk

enable

conf t

interface fa0/5 #quando no modo trunk não fica mapeada para nenhuma vlan

switchport mode trunk  

show interfaces trunk

exit


#router

enable

configure terminal

interface fa0/0.1

ip address 192.168.0.254 255.255.255.0

encapsulation dot1Q 2

exit

enable

configure terminal

interface fa0/0.2

ip address 192.168.0.254 255.255.255.0

encapsulation dot1Q 3

exit
