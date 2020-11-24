ifconfig -a #ver as configurações das placas de rede
route -n #ver as rotas desse host
ifconfig wlan0 192.168.237.6 netmask 255.255.255.0 up #atribir um ip e uma máscara
route -n #agora o endereço acima aparece como rota desse host
# para acessar a internet
route add default gw 192.168.237.1 #adicionar gateway
route -n #agora aparece os dois
