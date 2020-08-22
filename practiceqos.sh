#Prátice de QoS utilizando OpenBSD49

#acesso por ssh

ssh root@192.168.56.103

#configurar pf

vi /etc/pf.conf

#CBQ Class Based Queueing

altq on em1 cbq bandwidth 10Mb queue {fila1, fila2, fila3} # linha 1 vi

#Prioridades

queue fila1 priority 10% priority 6 cbq(red) #linha 2 vi  ~ red reduz o fluxo de dados

queue fila2 priority 50% priority 3 cbq(red)

queue fila3 priority 1% priority 1 cbq(default)

pass out quick on em1 inet proto tcp from any to any port 22 queue fila1

pass out quick on em1 inet proto tcp from any to any port 80 queue fila2

pass out quick on em1 inet proto tcp from any to any port 8080 queue fila3

#sair do vi

pfctl -nf /etc/pf.conf #testar arquivo

pfctl -f /etc/pf.conf #carregar regras

#maquina real

apt-get install iperf  #shel1

iperf -u -s -p 81 #shell1


iperf -u -c 192.168.56.1 -p 8080 -t 15 #shell2

iperf -u -s -p 8080 #shell3


#maquina virtual

iperf -u -c 192.168.56.1 -p 81 -t 10




