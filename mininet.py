# atividade 1

from mininet.net import Mininet
from mininet.node import Controller
from mininet.cli import CLI
from mininet.log import setLogLevel, info

def emptyNet():
net = Mininet(controller=Controller)
net.addController( 'c0' )
h1 = net.addHost( 'h1')
sw2 = net.addSwitch( 'sw2' )
r3 = net.addHost( 'r3')
sw4 = net.addSwitch( 'sw4' )
h5 = net.addHost( 'h5')
net.addLink( h1, sw2 )
net.addLink( r3, sw2 )
net.addLink( r3, sw4 )
net.addLink( h5, sw4 )
net.start()
CLI( net )
net.stop()
if __name__ == '__main__':
setLogLevel( 'info' )
emptyNet()