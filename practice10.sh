# teste suricata

sudo /usr/bin/suricata -c /etc/suricata/suricata.yaml -i eth0 --init-errors-fatal

# prática VPN
#Exemplo
ssh -L 1000:172.160.1:80 lula@200.0.0.1 -p 2222 #adiciona uma conexão via localhost

#Porta do http
ssh -L 1000:192.168.56.101:80 lula@192.168.56.101


#tunel dentro de um tunel

# ida 
ssh -L 1001:192.168.56.101:22 lula@192.168.56.101

# a volta
ssh -L 1002:127.0.0.1:80 lula@172.0.0.1 -p 1001

