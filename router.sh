ifconfig -a #ver as configurações das placas de rede
route -n #ver as rotas desse host
ifconfig wlan0 192.168.237.6 netmask 255.255.255.0 up #atribir um ip e uma máscara
route -n #agora o endereço acima aparece como rota desse host
# para acessar a internet
route add default gw 192.168.237.1 #adicionar gateway
route -n #agora aparece os dois
#comando para adiconar rotas ao roteador
route add -net 10.1.0.0/16 dev eth0
route add -net 10.2.0.0/16 dev wlan0
route -n
#para configurar o host linux como roteador precisa do comando
echo 1 > /proc/sys/net/ipv4/ip_forward #para desativar é só trocar o 1 pelo 0

